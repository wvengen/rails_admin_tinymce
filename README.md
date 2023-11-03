# TinyMCE plugin for `rails_admin`

[![Gem Version](https://badge.fury.io/rb/rails_admin_tinymce.svg)](https://badge.fury.io/rb/rails_admin_tinymce)

[RailsAdmin](https://github.com/sferik/rails_admin) extension for enabling the [TinyMCE](https://www.tiny.cloud/) editor.

- Does not yet support ActiveStorage for image/files.
- Tested with [tinymce-rails](https://github.com/spohlenz/tinymce-rails) 6.7.2.
- Turbo Drive is supported (even though tinymce-rails doesn't support it yet).

## Installation

To enable **rails_admin_tinymce**, add the following to your `Gemfile`:

```ruby
gem 'rails_admin'
gem 'rails_admin_tinymce'
```

Then create `config/tinymce.yml` according to step 2 of [tinymce-rails' instructions](https://github.com/spohlenz/tinymce-rails#instructions).

Finally make sure the TinyMCE Javascript is loaded. That may differ depending on how you're using Javascript in Ruby on Rails.

### Importmap

Add to `importmap.rails_admin.rb`:

```rb
pin 'tinymce'
pin 'tinymce.rails_admin'
```

Add to `rails_admin.js`:

```javascript
import 'tinymce';
import 'tinymce.rails_admin';
```

### Bundler

TODO

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

Or, you can provide more options to customize:

```ruby
RailsAdmin.config do |config|
  config.model Team do
    edit do
      field :description, :tinymce do
        # choose another configuration set from tinymce.yml
        config 'alternate'
        # or override specific options, see https://www.tiny.cloud/docs/tinymce/6/basic-setup/
        options ({ plugins: [:image, :link] })
      end
    end
  end
end
```

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).
