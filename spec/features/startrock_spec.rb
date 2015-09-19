require 'spec_helper'



feature 'Starting a new game' do
  scenario 'When go to the game I am told it is called Rock, Paper, Scissors' do
  visit '/'
  expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario 'When I go to the game I am giving some instructions on how to play' do
  visit '/'
  expect(page).to have_content "How to Play"
  end

end
