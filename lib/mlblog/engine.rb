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
  end
end
