require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
 

feature 'play a game of RPS' do
  SEED = 123

  before do
    sign_in_and_play
  end 

#the marketeer will be presented the choices (rock, paper and scissors)

	scenario 'presented with the choices of Rock, paper and scissors' do
	  expect(page).to have_button 'Rock'
	  expect(page).to have_button 'Paper'
	  expect(page).to have_button 'Scissors'
	 end

	#the marketeer can choose one option

	scenario 'can choose an option between Rock, Paper and Scissors' do
		click_button 'Rock'
		expect(page).to have_content 'You chose Rock'
	end

	#the game will choose a random option

	# scenario 'game/opponent choose an option' do
	# srand(SEED)
	# click_button 'Rock'
	# expect(page).to have_content 'Opponent chose Scissors'
	# end

	context 'end game' do
		before do
		  srand(SEED)
		end
	

	#I want to see a winner

	scenario 'I win' do
	 click_button 'Rock'
	 expect(page).to have_content 'You win!'
	end

	scenario 'I lose' do
	 click_button 'Paper'
	 expect(page).to have_content 'You lose!'
	end

	scenario 'I draw' do
	 click_button 'Scissors'
	 expect(page).to have_content 'You draw!'
	end

end
	



	# def messages
	# 	[:rock, :paper, :scissors].map { |choice| "Opponent chose #{choice.to_s.capitalize}" }
	# end
end 