require './app.rb'
require 'spec_helper'

RSpec.feature "Homepage", :type => :feature do
  scenario "User enters name" do
    visit '/'
    expect(page).to have_content("Player name")
  end
end
