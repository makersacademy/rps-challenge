require "spec_helper"

feature "Can select computer as opponent" do
  scenario "Selects computer as opponent, goes to game" do
    sign_in_and_play
    click_button "Computer"
    expect(page).to have_content "Lanie is playing vs Computer!"
  end
end
