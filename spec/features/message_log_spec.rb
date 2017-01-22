feature "FEATURE: Message log" do

  scenario "Enter game message" do
    play_two_player
    expect(page).to have_content("Beast and Magneto entered the game!")
  end

  scenario "Battle result message" do
    player_1_won
    expect(page).to have_text("Beast's Lizard poisons Magneto's Spock!")
  end

end
