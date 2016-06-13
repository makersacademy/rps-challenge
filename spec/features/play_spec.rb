require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game of RPS' do
#See R P S

PLAY_RAND = 12345
before {sign_in_and_play}

scenario 'see rock paper and scissors' do
	expect(page).to have_button 'Rock'
	expect(page).to have_button 'Paper'
	expect(page).to have_button 'Scissors'
end 

#choose an object to play

scenario 'choose an object of rps' do
	click_button 'Rock'
	expect(page).to have_content 'You played Rock!'
end 

#game generates an option at random

scenario 'game chooses a random option' do
	#do srand (it takes number as argument, seeds close to random; each call will return same)
	srand(PLAY_RAND)
	click_button 'Rock'
 	expect(page).to have_content 'Player 2 played Scissors!'
 	# message = find(:css, "#player2").text
  # expect(possible_messages).to include message
end 

#I want to see if I win
context 'end game' do
	before do
		srand(PLAY_RAND)
	end 
	scenario 'I win' do
		srand(PLAY_RAND)
		click_button 'Rock'
		expect(page).to have_content 'You win!'
	end 

	scenario 'I lose' do
		srand(PLAY_RAND)
		click_button 'Paper'
		expect(page).to have_content 'You lose!'
	end 

	scenario 'I draw' do
		srand(PLAY_RAND)
		click_button 'Scissors'
		expect(page).to have_content 'You draw!'
	end 
end 

#I want to see a winner

# def possible_messages
# 	[:rock, :paper, :scissors].map { |object| "Player 2 played #{object.to_s.capitalize}!"}
# end 

end 