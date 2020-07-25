require "spec_helper"

feature "Throw rock" do
  scenario "player 1 throws rock" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Lanie threw rock!"
  end
end
