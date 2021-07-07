require "spec_helper"

feature "Throw paper" do
  scenario "In singleplayer, player 1 throws paper" do
    sign_in_and_play
    click_button "Computer"
    click_button "Paper"
    expect(page).to have_content "Lanie threw paper!"
  end
end
