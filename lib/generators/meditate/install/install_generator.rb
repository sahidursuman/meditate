module Meditate
  module Generators
    class InstallGenerator < Rails::Generators::Base
=begin
      def add_javascripts
        append_file 'app/assets/javascripts/application.js', "//= require meditate\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/application.css', "*= require meditate\n", before: /\*\//, verbose: true
      end
=end
      def setup_routes
        route "resources :inline_validations, only: [:create]"
      end
    end
  end
end