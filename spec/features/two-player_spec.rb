require 'spec_helper'



feature 'Starting a new game' do
  scenario 'When go to the game I am told it is called Rock, Paper, Scissors - Two Player Game' do
  visit '/twoplayer'
  expect(page).to have_content "Rock, Paper, Scissors - Two Player Game"
  end


end
