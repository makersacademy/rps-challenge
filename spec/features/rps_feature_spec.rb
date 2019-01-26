

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'name registration' do
  scenario 'players can enter their names' do
    sign_in_and_play
    expect(page).to have_content('Player 1: Jill')
    expect(page).to have_content('Player 2: Jack')
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
    expect(page).to have_content('has chosen Rock!')
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('has chosen Paper!')
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('has chosen Scissors!')
  end

  scenario 'game will select a random option' do
    sign_in_and_play
    choose_rock_and_scissors
    click_button('Resolve')
    expect(page).to have_content('The computer has chosen Scissors!')
  end

  scenario 'the game will declare a winner' do
    sign_in_and_play
    choose_rock_and_scissors
    click_button('Resolve')
    expect(page).to have_content(Game::COMPUTER_LOSE_MESSAGE)
  end

  scenario 'the game can be reset' do
    sign_in_and_play
    choose_rock_and_scissors
    click_button('Resolve')
    click_button('Reset')
    expect(page).to have_content('Please sign in to play')
    fill_in('player_one_name', with: 'Jill')
    click_button('Submit')
    expect(page).to_not have_content('has chosen')
  end

end

