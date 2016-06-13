require 'spec_helper'

feature 'playing a game of RPS' do

PLAY_RAND = 12345
before {sign_in_and_play}

scenario 'see rock paper and scissors' do
	expect(page).to have_button 'Rock'
	expect(page).to have_button 'Paper'
	expect(page).to have_button 'Scissors'
end 
scenario 'choose an object of rps' do
	click_button 'Rock'
	expect(page).to have_content 'You played Rock!'
end 



scenario 'game chooses a random option' do
	srand(PLAY_RAND)
	click_button 'Rock'
 	expect(page).to have_content 'Player 2 played Scissors!'
end 


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

end 