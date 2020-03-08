feature 'Scoreboard' do
  scenario 'initializes with both players on 0' do
    start_game
    expect(page).to have_content "Josie\nComputer"
    expect(page).to have_content "0\n: 0"
  end
  scenario 'when player 1 wins a round, their score is updated to 1' do
    srand(1)
    play_rock
    expect(page).to have_content "0\n: 1"
  end
  scenario 'when computer wins a round, their score is updated to 1' do
    srand(3)
    play_rock
    expect(page).to have_content "1\n: 0"
  end
  scenario 'when players draw, their score is not updated' do
    srand(2)
    play_rock
    expect(page).to have_content "0\n: 0"
  end
end
