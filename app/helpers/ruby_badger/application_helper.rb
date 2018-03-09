module RubyBadger
  module ApplicationHelper
    def ruby_badger(text = nil, git_info = false)
      content_tag :div, class: "corner-banner ruby-badger #{Rails.env}" do
      	text = Rails.env if text.blank?
      	if text.instance_of?(Array)
        	text << [git_branch_info] if git_info
	      	text.join('<br/>').html_safe
        else
        	text += '<br/>' << git_branch_info if git_info
        	text.html_safe
        end
      end
    end

    def git_branch_info
	    `git rev-parse --abbrev-ref HEAD`.chomp
	  end
  end
end
