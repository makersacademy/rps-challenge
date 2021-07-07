require 'spec_helper'

feature "enter name singleplayer" do
  scenario "player 1 types in name and chooses opponent" do
    sign_in_and_play
    click_button "Computer"
    expect(page).to have_content "Lanie is playing vs Computer!"
  end
end
