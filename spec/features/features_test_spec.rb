
feature 'user story 1' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  scenario 'user can enter their name before playing' do
    visit('/')
    expect(page).to have_content 'Enter your name to play'
  end

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors

  scenario 'user can play the game' do
    srand(200)
    visit('/')
    fill_in 'player_name', with: 'Dan'
    click_button 'Submit'
    choose('weapon', option: 'Rock')
    click_button 'Attack'
    expect(page).to have_content 'won by using'
  end

  # Hints on functionality

  # - the marketeer should be able to enter their name before the game
  # - the marketeer will be presented the choices (rock, paper and scissors)
  # - the marketeer can choose one option
  # - the game will choose a random option
  # - a winner will be declared

end
