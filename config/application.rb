require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'active_resource/railtie'
require 'sprockets/railtie'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module IRCGlados
  class Application < Rails::Application
    config.generators do |g|
      g.orm                 :mongoid
      g.template_engine     :haml
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl

      g.view_specs          false
      g.helper_specs        false
      g.controller_specs    false

      g.javascripts         false
      g.stylesheets         false
    end

    config.hamlcoffee.escapeAttributes = false
    config.hamlcoffee.escapeHtml = false

    config.middleware.use RackSessionAccess::Middleware if Rails.env.test?
    
    config.encoding = "utf-8"
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end

Dir[Rails.root.join('lib/**/*.rb')].each {|f| require f}
