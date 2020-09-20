require "./spec/features/web_helpers"

feature "players" do
  scenario "player plays rock against bot scissors" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Rock"
    expect(page).to have_content "Charlotte's Rock beats Bot's Scissors"
    expect(page).to have_content "Play Again"
    click_button "Play Again"
  end

  scenario "player plays scissors against bot scissors" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Scissors"
    expect(page).to have_content "It's a draw! Try again!"
    expect(page).to have_content "Play Again"
    click_button "Play Again"
  end

  scenario "player plays paper against bot scissors" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Paper"
    expect(page).to have_content "Bot's Scissors beats Charlotte's Paper"
    expect(page).to have_content "Play Again"
    click_button "Play Again"
  end
end
