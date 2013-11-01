require 'spec_helper'

describe "static assets integration" do
  it "provides ruby badger on the asset pipeline" do
    pending
    visit '/assets/ruby_badger.js'
    expect(page.text).should include 'var StaticAsset = {};'
  end

  it "provides ruby badger on the asset pipeline" do
    visit '/assets/ruby_badger.css'
    expect(page.text).should include '.ruby_badger {'
  end
end
