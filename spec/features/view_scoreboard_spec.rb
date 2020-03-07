feature 'Scoreboard' do
  scenario 'initializes with both players on 0' do
    start_game
    expect(page).to have_content "Josie: 0"
    expect(page).to have_content "Computer: 0"
  end
  scenario 'when player 1 wins a round, their score is updated to 1' do
    srand(3)
    start_game
    click_button 'rock'
    click_button 'Ok'
    expect(page).to have_content "Josie: 1"
    expect(page).to have_content "Computer: 0"
  end
  scenario 'when computer wins a round, their score is updated to 1' do
    srand(1)
    start_game
    click_button 'rock'
    click_button 'Ok'
    expect(page).to have_content "Josie: 0"
    expect(page).to have_content "Computer: 1"
  end
  scenario 'when players draw, their score is not updated' do
    srand(2)
    start_game
    click_button 'rock'
    click_button 'Ok'
    expect(page).to have_content "Josie: 0"
    expect(page).to have_content "Computer: 0"
  end
end
