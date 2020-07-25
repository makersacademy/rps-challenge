require "spec_helper"

feature "Throw scissors" do
  scenario "In singleplayer, player 1 throws scissors" do
    sign_in_and_play
    click_button "Computer"
    click_button "Scissors"
    expect(page).to have_content "Lanie threw scissors!"
  end
end
