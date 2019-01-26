

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'name registration' do
  scenario 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content('Player 1: Jill')
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play rock paper scissors' do

  scenario 'marketeer gets choice of rock, paper, scissors' do
    sign_in_and_play
    expect(page).to have_content('Choose your weapon!')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'marketeer can make a selection of rock, paper, scissors' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose Rock!')

  end

  xscenario 'game will select a random option' do

  end

  xscenario 'the game will declare a winner' do

  end

end

