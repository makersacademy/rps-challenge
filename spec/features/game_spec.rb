feature 'Gamepage' do

  scenario 'the gamepage has specific text' do
    start_game
    expect(page).to have_content('Choose your weapon')
  end

  scenario 'there is a choice of r, p or s' do
    start_game
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end
    
  
  # scenario 'it has a form to enter your player name' do
  #   visit('/')
  #   expect(page).to have_field('Enter your name', type: 'text')
  # end
  
  # scenario 'there is a button to begin the game' do
  #   visit('/')
  #   expect(page).to have_button('Start the game')
  # end

  # scenario 'clicking button takes you to game page' do
  #   visit('/')
  #   click_button('Start the game')
  #   expect(page).to have_content("Choose your weapon")
  # end
end
