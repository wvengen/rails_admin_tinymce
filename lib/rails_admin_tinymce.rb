require "rails_admin_tinymce/version"
require "rails_admin_tinymce/engine"
require "tinymce-rails"

module RailsAdminTinymce
  # Your code goes here...
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Tinymce < Text
          # Register field type for the type loader
          RailsAdmin::Config::Fields::Types.register(self)

          register_instance_option :config do
            :default
          end

          register_instance_option :options do
            {}
          end

          register_instance_option :partial do
            :form_tinymce
          end
        end
      end
    end
  end
end


RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties.name == :tinymce
    fields << RailsAdmin::Config::Fields::Types::Tinymce.new(parent, properties.name, properties)
    true
  else
    false
  end
end


