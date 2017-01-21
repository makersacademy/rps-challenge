require 'spec_helper'

feature "Selecting a weapon" do
  scenario "Choosing a weapon from the list" do
    sign_in_and_play
    select(:Rock, :from => "weapon_choice")
    click_button "Ok"
    expect(page).to have_content("You have chosen the weapon rock")
  end
end
