require 'spec_helper'

feature 'Playing a game' do
  #This test is not passing, reports rock is not present.
  #But rock appears on 'results.erb page - need to ask coach' 
  scenario 'I am asked to choose my weapon to fight' do
    visit '/game'
    select 'rock', from: 'weapon'
    click_button('Fight')
    visit '/result'
    expect(page).to have_content 'rock'  
  end
#DON'T REALLY UNDERSTAND THE BELOW TEST. ERROR MESSAGE STATES : undefined method `player' for nil:NilClass
  scenario 'I am told what the computer has chosen' do
    visit '/result'

    $game = Game.new Player
    player_choice = $game.player.pick 'rock'
    allow($game).to receive(:comp_choice).and_return('scissors')
    $game.play player_choice
    expect(page).to have_content 'scissors'
  end
#DON'T REALLY UNDERSTAND THE BELOW TEST. ERROR MESSAGE STATES : undefined method `player' for nil:NilClass
  scenario 'The winner of the game is reported' do
    visit '/result'
    $game = Game.new Player
    player_choice = $game.player.pick 'rock'
    allow($game).to receive(:comp_choice).and_return('scissors')
    $game.play player_choice
    expect(page).to have_content 'Player is the winner'
  end






end

  