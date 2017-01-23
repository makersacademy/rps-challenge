require 'spec_helper'

feature "Playing again" do
  scenario "Playing again within the same game" do
    sign_in_and_play
    choose_weapon_and_fight
    click_button "Play again"
    expect(page).to have_content "To play, please select your weapon from the list"
  end
end
