require 'spec_helper'



feature 'Starting a new game' do
  scenario 'When go to the game I am told it is called Rock, Paper, Scissors' do
  visit '/'
  expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario 'When I go to the game I am given some instructions on how to play' do
  visit '/'
  expect(page).to have_content "How to Play"
  end

end

feature 'Playing the game' do
  scenario "When I enter 'Rock' I am told I have won" do
  visit '/'
  fill_in('your_choice', :with => 'rock')
  click_button('Play')
  expect(page).to have_content "The result is"
  end

end
