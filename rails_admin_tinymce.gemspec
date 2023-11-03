require_relative "lib/rails_admin_tinymce/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_admin_tinymce"
  spec.version     = RailsAdminTinymce::VERSION
  spec.authors     = ["wvengen"]
  spec.email       = ["dev-rails@willem.engen.nl"]
  spec.homepage    = "https://github.com/wvengen/rails_admin_tinymce"
  spec.summary     = "TinyMCE editor for rails_admin"
  spec.description = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wvengen/rails_admin_tinymce"
  spec.metadata["changelog_uri"] = "https://github.com/wvengen/rails_admin_tinymce/releases"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 5.0.0"
  spec.add_dependency "rails_admin", ">= 1.0"
  spec.add_dependency "tinymce-rails"
end
