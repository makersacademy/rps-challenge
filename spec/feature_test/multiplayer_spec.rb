require 'spec_helper'

feature "when I choose rock" do
  scenario "I can see that I've chosen rock" do
    sign_in_and_play_multiplayer
    2.times {click_button ('Rock')}
    expect(page).to have_content("Mike chose rock!")
    expect(page).to have_content("Jilly chose rock!")
    expect(page).to have_content("It's a draw!")
  end
end
