require 'rails'
require 'sunrise-comments'

module Sunrise
  module Comments
    class Engine < ::Rails::Engine
      config.before_initialize do
        Sunrise::Plugin.register :comments do |plugin|
          plugin.model = 'sunrise/models/comment'
          plugin.menu = false
          plugin.version = Sunrise::Comments::VERSION.dup
        end
        
        Sunrise::Plugins.activate(:comments)
      end
    end
  end
end
