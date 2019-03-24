# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game play' do

  scenario 'user sees result' do
    visit '/'

    fill_in "player1",	with: "Player1"
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content 'Player1' 
  end

  scenario 'go back to start after game end' do
    visit '/'

    fill_in "player1",	with: "Player1"
    click_button 'Start game'
    click_button 'Rock'
    click_button 'Rock'
    click_button 'Start again'
    expect(page).to have_content 'Player 1: Player1'
  end

  scenario 'player 1 wins game' do

  end

  scenario 'player 2 wins game' do

  end

end
