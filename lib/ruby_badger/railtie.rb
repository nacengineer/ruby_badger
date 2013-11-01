# Used to ensure that Rails 3.0.x, as well as Rails >= 3.1 with asset pipeline disabled
# get the minified version of the scripts included into the layout in production.
module RubyBadger
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        ruby_badger_defaults = %w(ruby_badger)
        if config.action_view.stylesheet_expansions
          config.action_view.stylesheet_expansions[:defaults] |= ruby_badger_defaults
        end
      end
    end
  end
end
