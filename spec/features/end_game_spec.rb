require "./spec/features/web_helpers"

feature "when the game ends" do
  scenario "the player can keep playing" do
    login_and_play
    click_button "rock"
    expect(page).to have_content "Keep playing"
    click_button "Keep playing"
  end

  scenario "the player can restart the game" do
    login_and_play
    click_button "paper"
    expect(page).to have_content "New Game"
    click_button "New Game"
  end
end