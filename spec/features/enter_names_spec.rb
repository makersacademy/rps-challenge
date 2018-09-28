require 'spec_helper'
require './app'

feature "Entering player names" do
  scenario "Players enter their names at the beginning" do
    sign_in_and_play
    expect(page).to have_content "Dumbledore vs. The Machine"
  end

  scenario "Throws error if user does not enter any name" do
    visit '/'
    click_button "Let\'s play!"
    expect(page).to have_content "Please enter your name"
  end
end
