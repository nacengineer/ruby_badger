require 'spec_helper'

describe "static assets integration" do
  it "provides ruby badger on the asset pipeline" do
    visit '/assets/ruby_badger.css'
    expect(page.text).to include '.ruby-badger'
  end
end
