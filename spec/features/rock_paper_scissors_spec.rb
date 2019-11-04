feature 'Rock Paper Scissors' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to the Rock-Paper-Scissors game!'
  end

  scenario 'allows Player1 to register their name to play a game' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Register'
    expect(page).to have_content 'Dave vs. Computer'
  end

  scenario 'displays error message if Player 1 name is not specified' do
    visit('/')
    fill_in :player_1_name, with: ''
    click_button 'Register'
    expect(page).to have_content 'Error: Please specify player name!'
  end

  scenario 'player-one plays rock' do
    visit('/')
    fill_in :player_1_name, with: 'Jez'
    click_button 'Register'
    click_button 'Rock'
    expect(page).to have_content 'Jez played: ROCK!'
  end

  scenario 'player-one plays paper' do
    visit('/')
    fill_in :player_1_name, with: 'Jez'
    click_button 'Register'
    click_button 'Paper'
    expect(page).to have_content 'Jez played: PAPER!'
  end

end
