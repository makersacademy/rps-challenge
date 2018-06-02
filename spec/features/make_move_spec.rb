require 'computer'
require './app'

feature 'Feature: page has buttons to make a move' do
  scenario 'rock button' do
    sign_in_and_play
    expect(page).to have_content 'ROCK'
  end

  scenario 'paper button' do
    sign_in_and_play
    expect(page).to have_content 'PAPER'
  end

  scenario 'scissors button' do
    sign_in_and_play
    expect(page).to have_content 'SCISSORS'
  end
end

feature 'Feature: playing the game' do
  before do
    computer = Computer.new
  end

  scenario 'Player wins' do
    sign_in_and_play
    click_button 'ROCK'
    @move == 'scissors'
    expect(page).to have_content 'Bruce wins'
  end

  scenario 'Player loses' do
    sign_in_and_play
    click_button 'ROCK'
    @move == 'paper'
    expect(page).to have_content 'Bruce loses'
  end

  scenario 'Draw' do
    sign_in_and_play
    click_button 'ROCK'
    @move == 'rock'
    expect(page).to have_content "It's a draw"
  end
end
