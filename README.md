# RubyBadger

Get a nice, clean badge displaying your Rails Environment or other helpful info.  Want to display last deploy date?  Or maybe the status of some app wide settings?  Throw it in RubyBadger!  He just doesn't care!

This is my fork/gem of [honey_badger](https://github.com/rsanheim/honey_badger) gem. This exists because honey_badger has gone dormant and hasn't been patched in many years. Although this one is not an actively changing gem, Pull requests are accepted.

# Usage (requires Rails 4.2 and Bundler > 1.8)

Add to your Gemfile:

    gem "ruby_badger"

In your application layout somewhere, probably just below your body tag, render the ruby_badger helper:

    <%= ruby_badger unless Rails.env.production? %>

If you want to display something other than the current environment name, just pass it in:

    <%= ruby_badger "Don't Care" %>

Or pass in an array to display more than one interesting fact in your badge (each will be displayed on its own line):

    <%= ruby_badger ["eats larva", "skin is loose"] %>

To get the current get branch information: (default is false)

    <%= ruby_badger(nil, true) %> # for default env text + git info
    <%= ruby_badger(["eats larva", "skin is loose"], true) %> # for custom text + git info

Add the require for the css in your application.css (using Rails 3.1 sprockets awesomeness):

    /*
     *= require ruby_badger
     */

Make sure to put the `ruby_badger` *above* your own SCSS requires, or else the ruby badger might get *nasty.* It'll just *take what it wants.*

# Customization

You can customize colors and add custom environment names by importing `ruby_badger` into your SCSS file. Let's say you like the color green and your `Rails.env` is `demo`:

    @import 'ruby_badger';

    .ruby-badger.demo {
      @include corner-banner(#336600);
    }

To see what else you can customize, take a look at `ruby_badger.css.scss`.

# Authors

* David Southard
* Rob Sanheim
* Jamie Kite

This project rocks and uses MIT-LICENSE.
