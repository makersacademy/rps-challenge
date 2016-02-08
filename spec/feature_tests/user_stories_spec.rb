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
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    choose('rock')
    click_button 'DO YOUR WORST!'
    click_button('Results!')
    expect(page).to have_content 'win'
  end

  scenario 'a player can lose a game of rps. - player = scissors, computer stumped to choose rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    choose('scissors')
    click_button 'DO YOUR WORST!'
    click_button('Results!')
    expect(page).to have_content 'lose'
  end

  scenario 'a player can draw at a game of rps. - player = paper, computer stumped to choose paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    choose('paper')
    click_button 'DO YOUR WORST!'
    click_button('Results!')
    expect(page).to have_content 'draw'
  end
end

  feature 'show computer choice' do
    scenario 'so a players can see what the computer has chosen there should be a page which shows this before the results' do
      sign_in_and_play
      click_button 'DO YOUR WORST!'
      expect(page).to have_content 'COMPUTER CHOOSES....'
    end
  end

  feature 'play again' do
    scenario 'once a player has reached the results page they should have the option to play agian without haveing to sign in' do
      sign_in_and_play
      finish_game
      expect(page).to have_content 'BRODIR SIGHADDSSON'
    end
  end
