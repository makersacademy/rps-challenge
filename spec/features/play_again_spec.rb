feature 'Lets a player decide' do
  scenario 'to play again when the game is over' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    click_button 'Rock'
    click_button 'Play Again!'
    expect(page).to have_content "Chose Your Weapon"
  end

  scenario 'to not play again when the game is over' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    click_button 'Rock'
    click_button 'End'
    expect(page).to have_content "Rock - Paper - Scissors"
  end
end
