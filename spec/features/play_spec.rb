require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game of RPS' do
#See R P S
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

scenario 'game chooses "Rock"' do
	click_button 'Rock'
	
	message = find(:css, "#player2").text

 	expect(possible_messages).to include message
end 

def possible_messages
	[:rock, :paper, :scissors].map { |object| "Player 2 played #{object.to_s.capitalize}!"}
end 

end 