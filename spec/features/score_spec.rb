feature "FEATURE: Scores" do

  scenario "Player 1 score starts at 0" do
    play_two_player
    expect(page.find_by_id("p1_score")).to have_text("0")
  end
  scenario "Player 2 score starts at 0" do
    play_two_player
    expect(page.find_by_id("p2_score")).to have_text("0")
  end
  scenario "Player 1 score increases after win" do
    player_1_won
    new_round
    expect(page.find_by_id("p1_score")).to have_text("1")
    round_player_1_wins
    expect(page.find_by_id("p1_score")).to have_text("2")
  end
  scenario "Player 2 score increases after win" do
    player_2_won
    new_round
    expect(page.find_by_id("p2_score")).to have_text("1")
    round_player_2_wins
    expect(page.find_by_id("p2_score")).to have_text("2")
  end
end
