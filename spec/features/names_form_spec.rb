require './app.rb'
require 'spec_helper'

RSpec.feature "Homepage", :type => :feature do
  scenario "User enters name" do
    visit "/"
    fill_in "Player name:", with: "Louisa"
    click_button("Play RPS!")
    expect(page).to have_content("Louisa VS Computer")
  end
end
