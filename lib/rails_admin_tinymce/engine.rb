module RailsAdminTinymce
  class Railtie < ::Rails::Engine
    initializer "RailsAdminTinyMCE precompile hook", group: :all do |app|
      app.config.assets.precompile += ['tinymce.rails_admin.js']
    end
  end
end
