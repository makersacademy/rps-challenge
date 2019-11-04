feature 'Rock Paper Scissors' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to the Rock-Paper-Scissors game!'
  end

#   As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  scenario 'allows Player1 to register their name to play a game' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Register Player1'
    expect(page).to have_content 'Dave vs. Computer'
  end

  scenario 'displays error message if Player 1 name is not specified' do
    visit('/')
    fill_in :player_1_name, with: ''
    click_button 'Register Player1'
    expect(page).to have_content 'Error: Please specify player name!'
  end

end
