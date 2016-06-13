require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

#the marketeer will be presented the choices (rock, paper and scissors)


feature 'play a game of RPS' do
	before do
	  sign_in_and_play
	 end 


	scenario 'presented with the choices of Rock, paper and scissors' do
	  expect(page).to have_content 'Rock'
	  expect(page).to have_content 'Paper'
	  expect(page).to have_content 'Scissors'
	 end
end 