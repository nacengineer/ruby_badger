# RubyBadger

Get a nice, clean badge displaying your Rails Environment or other helpful info.  Want to display last deploy date?  Or maybe the status of some app wide settings?  Throw it in RubyBadger!  He just doesn't care!

![RubyBadger Demo](https://img.skitch.com/20110723-h8iabtcdpb4i64xkgbrwy5kjs.jpg "RubyBadger Demo")

# Usage (requires Rails 3.1)

Add to your Gemfile:

    gem "ruby_badger"

In your application layout somewhere, probably just below your body tag, render the ruby_badger helper:

    <%= ruby_badger unless Rails.env.production? %>

If you want to display something other than the current environment name, just pass it in:

    <%= ruby_badger "Don't Care" %>

Or pass in an array to display more than one interesting fact in your badge (each will be displayed on its own line):

    <%= ruby_badger ["eats larva", "skin is loose"] %>

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

This project rocks and uses MIT-LICENSE.
