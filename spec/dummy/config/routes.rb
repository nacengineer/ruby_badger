Rails.application.routes.draw do

  mount RubyBadger::Engine => "/ruby_badger"

  root to: "public#index"
end
