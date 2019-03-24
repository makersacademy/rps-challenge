# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game play' do

  scenario 'user sees result' do
    register_1_player_against_computer
    click_button 'Rock'
    click_button 'Rock' ##this should be automatic
    expect(page).to have_content 'Winner: Draw'
  end

  scenario 'go back to start after game end' do
    register_1_player_against_computer
    click_button 'Rock'
    click_button 'Rock'
    click_button 'Start again'
    expect(page).to have_content 'Players:'
  end

  scenario 'player 1 wins game' do
    register_1_player_against_computer
    click_button 'Paper' 
    click_button 'Rock' ##this should be automatic
    expect(page).to have_content 'Winner: Player1'
  end

  scenario 'player 2 wins game' do
    register_1_player_against_computer
    click_button 'Rock' 
    click_button 'Paper' ##this should be automatic
    expect(page).to have_content 'Winner: Computer'
  end

end
