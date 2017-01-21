require 'spec_helper'

feature "player should be able to enter their name before the game", :type => :feature do

  scenario "user enters name and sees it appear on screen" do
    visit("/")
    fill_in "player_name", with: "Kat"
    click_button "Enter"

    expect(page).to have_content("Welcome, Kat!")
  end

end
