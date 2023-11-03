# TinyMCE plugin for `rails_admin`

[![Gem Version](https://badge.fury.io/rb/rails_admin_tinymce.svg)](https://badge.fury.io/rb/rails_admin_tinymce)

[RailsAdmin](https://github.com/sferik/rails_admin) extension for enabling the [TinyMCE](https://www.tiny.cloud/) editor.

Does not yet support ActiveStorage for image/files.

## Installation

To enable **rails_admin_tinymce**, add the following to your `Gemfile`:

```ruby
gem 'rails_admin'
gem 'rails_admin_tinymce'
```

## Configuration

```ruby
RailsAdmin.config do |config|
  config.model Team do
    edit do
      field :description, :tinymce
    end
  end
end
```

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).
