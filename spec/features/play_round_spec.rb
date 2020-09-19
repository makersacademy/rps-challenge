require "./spec/features/web_helpers"

feature "players" do
  scenario "player one plays rock against bot scissors" do
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Bot"
    click_button "Rock"
    expect(page).to have_content "Charlotte's Rock beats Bot's Scissors"
    #expect(page).to have_content "Charlotte Wins!"
    #click_button "Play Again"
  end
end
