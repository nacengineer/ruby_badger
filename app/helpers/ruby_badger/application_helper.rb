module RubyBadger
  module ApplicationHelper
    def ruby_badger(text=Rails.env)
      content_tag :div, :class => "corner-banner ruby-badger #{Rails.env}" do
        text = text.join('<br/>') if text.instance_of?(Array)
        text.html_safe
      end
    end
  end
end
