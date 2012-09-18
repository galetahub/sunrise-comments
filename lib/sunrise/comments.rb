# encoding: utf-8
module Sunrise  
  module Comments
    autoload :Base, 'sunrise/comments/base'
    autoload :Author, 'sunrise/comments/author'
    autoload :Commentable, 'sunrise/comments/commentable'
    
    # Default way to setup Sunrise. 
    def self.setup
      yield self
    end
  end
end

require 'sunrise/comments/version'
require 'sunrise/comments/engine'
