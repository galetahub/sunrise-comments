class Comment < ActiveRecord::Base
  include Sunrise::Models::Comment
  
  attr_accessible :user_name, :user_email, :content, :is_follow

  # Validations
  validates :content, :presence => true, :length => { :maximum => 500 }
  validates :commentable_type, :presence => true, :inclusion => { :in => %w( Post ) }
  validates :author_type, :inclusion => { :in => %w( User ) }, :allow_blank => true
  
  with_options :if => :anonymous? do |anonymous|
    anonymous.validates :user_name, :length => { :maximum => 100 }, :presence => true,
              :format => { :with => /\A[^[:cntrl:]\\<>\/&]*\z/ }
    anonymous.validates :user_email, :length => { :within => 6..100 }, :presence => true,
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  end

  # Format comment content
  auto_html_for :content do
    html_escape
    big_words :length => 80, :tag => "span"
    image
    youtube :width => 500, :height => 300
    vimeo :width => 500, :height => 300
    link :target => "_blank", :rel => "nofollow"
    simple_format
    sanitize
  end
end
