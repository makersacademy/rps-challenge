feature "FEATURE: See Results" do

  scenario "Displays correct move images" do
    player_1_won
    expect(page).to have_css("img[src*='lizard']")
    expect(page).to have_css("img[src*='spock']")
  end

  scenario "Displays correct battle result message" do
    player_1_won
    expect(page).to have_text("Lizard poisons Spock!")
  end

  scenario "win indicator arrow points right if player 1 won" do
    player_1_won
    expect(page).not_to have_css("img[class*='flip-horizonal']")
  end

  scenario "win indicator arrow points right if player 1 won" do
    player_2_won
    expect(page).to have_css("img[class*='flip-horizontal']")
  end
end
