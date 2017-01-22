require 'spec_helper'

feature "Exiting" do
  scenario "Exiting the game" do
    sign_in_and_play
    choose_weapon_and_fight
    click_button "Exit"
    expect(page).to have_content "Please enter your name:"
  end
end
