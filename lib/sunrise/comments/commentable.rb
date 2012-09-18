# encoding: utf-8
module Sunrise
  module Comments
    module Commentable
      def self.included(base)
        base.send :include, InstanceMethods
        base.send :extend, ClassMethods
      end
      
      module ClassMethods
        def self.extended(base)
          base.class_eval do
            belongs_to :commentable, :polymorphic => true, :counter_cache => true
            belongs_to :author, :polymorphic => true
            
            before_validation :make_author
            
            default_scope order("#{quoted_table_name}.id DESC")
            scope :recently, order("#{quoted_table_name}.created_at DESC")
            scope :siblings_for, lambda { |item| where(["commentable_type = ? AND commentable_id = ?", item.commentable_type, item.commentable_id]) }
            scope :follows, where(:is_follow => true)
          end
        end
      end
      
      module InstanceMethods
      
        def comments_count
          @comments_count ||= siblings.count
        end
        
        def siblings
          self.class.siblings_for(self)
        end
        
        def anonymous?
          author.nil?
        end
    
        protected
    
          def make_author
           unless author.nil?
             self.user_email = author.email if author.respond_to?(:email)
             self.user_name = author.name if author.respond_to?(:name)
           end
          end
      end
    end
  end
end
