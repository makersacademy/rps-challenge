require 'spec_helper'
require 'web_helpers'

# USER STORY ONE
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  scenario 'so a players can feel more involved with the game they can enter thier name to play a personalized battle.' do
    sign_in_and_play
    expect(page).to have_content 'BRODIR SIGHADDSSON'
  end
end


# USER STORY TWO
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play rock, paper, scissors' do
  scenario 'a player can win a game of rps. - player = rock, computer stumped to choose scissors' do
    allow($game).to receive(:computer_weapon).and_return("scissors")
    sign_in_and_play
    choose('rock')
    click_button 'FIGHT!'
    expect(page).to have_content 'win'
  end

  scenario 'a player can loose a game of rps. - player = scissors, computer stumped to choose rock' do
    allow($game).to receive(:computer_weapon).and_return("scissors")
    sign_in_and_play
    choose('scissors')
    click_button('FIGHT!')
    expect(page).to have_content 'loose'
  end

  scenario 'a player can draw at a game of rps. - player = paper, computer stumped to choose paper' do
    allow($game).to receive(:computer_weapon).and_return("scissors")
    sign_in_and_play
    choose('paper')
    click_button('FIGHT!')
    expect(page).to have_content 'draw'
  end
end
