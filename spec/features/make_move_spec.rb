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

feature 'Feature: player win' do
  scenario 'player chooses rock, computer chooses paper' do
    sign_in_and_play
    click_button 'ROCK'
    computer = Computer.new
    @move == 'paper'
    expect(page).to have_content 'Bruce wins'
  end
end
