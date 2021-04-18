require "./spec/features/web_helpers"

feature "player registration" do
  scenario "the player should fill in the name" do
    login_and_play
    expect(page).to have_content("Mike vs MATRIX")
  end
end