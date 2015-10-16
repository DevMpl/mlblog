require "jquery-rails"
require "jquery-fileupload-rails"
require "awesome_nested_set"
require "simple_form"
require "semantic-ui-sass"
require "sanitize"
require "ckeditor"

module Mlblog
  class Engine < ::Rails::Engine
    isolate_namespace Mlblog
		
		paths["config/initializers"] # => ["config/initializers"]
	  paths["config/locales"]      # => ["config/locales"]
		
    #自分のローカル時間を記録
    config.time_zone = 'Tokyo'

    #Active Record Timezone
    config.active_record.default_timezone = :local

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.load_path += Dir[Mlblog::Engine.root.join('public', 'locales', '*.{rb,yml}').to_s]
    I18n.enforce_available_locales = true
    config.i18n.default_locale = :ja

  end
end
