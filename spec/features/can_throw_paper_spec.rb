require "spec_helper"

feature "Throw paper" do
  scenario "player 1 throws paper" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Lanie threw paper!"
  end
end
