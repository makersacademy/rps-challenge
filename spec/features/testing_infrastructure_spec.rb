require 'game'
require_relative 'web_helpers'
game = Game.new

feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Time for some rock, paper and scissors!"
  end
end

feature 'register name' do
  scenario 'players can enter and submit their names' do
    sign_in_and_play
  expect(page). to have_content 'Feeling pumped Juan?'
  end
end

game_choice = 'Choose rock paper or scissors and press play to play'

feature 'input choice' do
  scenario 'player can enter their rps choice' do
    sign_in_and_play
    expect(page). to have_content game_choice
  end
end

feature 'submit rps' do
  scenario 'player can submit their rps choice' do
    sign_in_and_play
    selecting_rock
    expect(page). to have_content 'You have chosen: Rock'
  end
end

feature 'machine rps' do
  scenario 'machine selects its rock paper or scissors choice' do
    sign_in_and_play
    selecting_rock
    expect(page). to have_content 'The machine has chosen:'
  end
end

feature 'Result testing' do
  scenario 'Rock paper scissors winner is worked out and visable on page' do
    srand(3)
    sign_in_and_play
    selecting_rock
    expect(page). to have_content 'Yehays, you win!'
  end
end
