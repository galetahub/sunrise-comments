require 'rails/generators'

module Sunrise
  module Comments
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      desc "Generates comment model"

      def create_model
        copy_file('comment.rb', 'app/models/comment.rb')
      end
    end
  end
end
