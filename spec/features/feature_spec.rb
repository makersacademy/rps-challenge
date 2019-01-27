require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Playing a game' do
  PLAY_SEED = 221563
  before do
    sign_in_and_play
  end

  scenario 'Can see name' do
    expect(page).to have_content('Dan')
end

# As a marketeer
# I want to see the choices(rock, paper, scissors)

  scenario 'Can see Rock, Paper, Scissors' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

# The marketeer can choose one option

  scenario 'Can choose an option' do
    click_button 'Rock'
    expect(page).to have_content('Dan chose Rock!')
  end

# The game will choose a random option
  scenario 'game chooses a random option' do
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Scissors!'
  end
# As a marketeer
# So I can play a game
# I want to see a winner
  context 'end of game messages' do
    before do
      srand(PLAY_SEED)
    end

    scenario 'You win!' do
      click_button 'Rock'
      expect(page).to have_content 'Well done, you win!'
    end

    scenario 'You lose!' do
      click_button 'Paper'
      expect(page).to have_content 'You lose this time!'
    end

    scenario 'Draw!' do
      click_button 'Scissors'
      expect(page).to have_content "It's a draw!"
    end
  end
end
