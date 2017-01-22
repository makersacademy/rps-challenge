feature "FEATURE: See Results" do

  scenario "Displays correct move images" do
    player_1_won
    expect(page).to have_css("img[src*='lizard']")
    expect(page).to have_css("img[src*='spock']")
  end

  scenario "Displays correct battle result message after win" do
    player_1_won
    expect(page).to have_text("Lizard poisons Spock!")
  end

  scenario "Displays correct battle result message after draw" do
    draw
    expect(page).to have_text("Rock draws with Rock!")
  end

  scenario "win indicator arrow points right if player 1 won" do
    player_1_won
    expect(page).not_to have_css("img[class*='flip-horizonal']")
  end

  scenario "win indicator arrow points right if player 1 won" do
    player_2_won
    expect(page).to have_css("img[class*='flip-horizontal']")
  end

  scenario "can start a new round" do
    player_1_won
    click_button('new_round')
    expect(page).to have_css("#player_1_wrapper")
  end
  scenario "can change players" do
    player_1_won
    click_button('new_players')
    expect(page).to have_css("#name_entry_wrapper")
  end
end
