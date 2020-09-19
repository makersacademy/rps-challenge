require "./spec/features/web_helpers"

feature "player" do
  scenario "can start and complete a game" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Rock"
    expect(page).to have_content "Charlotte's Rock beats Bot's Scissors"
    expect(page).to have_content "Play Again"
    expect(page).to have_content "New Game"
    click_button "New Game"
  end
  scenario "player can start and complete a game, then can start a new game" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Rock"
    expect(page).to have_content "Charlotte's Rock beats Bot's Scissors"
    expect(page).to have_content "Play Again"
    expect(page).to have_content "New Game"
    click_button "New Game"
    srand(1)
    sign_in_and_play_second
    expect(page).to have_content "Johan vs. Bot"
    click_button "Scissor"
    expect(page).to have_content "Johan's Scissors beats Bot's Paper"
    expect(page).to have_content "Play Again"
    expect(page).to have_content "New Game"
  end
end
