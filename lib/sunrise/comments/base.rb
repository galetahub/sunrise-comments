module Sunrise
  module Comments
    module Base
      def self.included(base)
        base.send :include, InstanceMethods
        base.send :extend, ClassMethods
      end
      
      module ClassMethods
        def self.extended(base)
          base.class_eval do
            has_many :comments, :as => :commentable, :dependent => :delete_all
          end
        end
      end
      
      module InstanceMethods
      end
    end
  end
end
