require "spec_helper"

feature "Throw rock" do
  scenario "In singleplayer, player 1 throws rock" do
    sign_in_and_play
    click_button "Computer"
    click_button "Rock"
    expect(page).to have_content "Lanie threw rock!"
  end
end
