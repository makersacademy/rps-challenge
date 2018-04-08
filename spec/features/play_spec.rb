feature 'Gameplay' do

	PLAY_SEED = 210823351

	scenario 'submitting name' do
		enter_name_play
		expect(page).to have_content 'Vytis against the Computer'
	end

	scenario 'see the options/buttons of rock, paper, scissors' do
		enter_name_play 
		expect(page).to have_button 'Rock'
		expect(page).to have_button 'Paper'
		expect(page).to have_button 'Scissors'
	end

	scenario 'choose one option' do
		enter_name_play
		click_button 'Rock'
		expect(page).to have_content "You Rock"
	end

	scenario 'computer chooses a random option' do
		enter_name_play
		srand(PLAY_SEED)
		click_button 'Rock'
		expect(page).to have_content 'The Computer Scissors'
	end

	context 'end game' do
		before do
			srand(PLAY_SEED)
		end
			
		scenario 'Check if player wins' do
			enter_name_play
			click_button 'Rock'
			expect(page).to have_content 'You win!'
		end

		scenario 'Check if player lose' do
			enter_name_play
			click_button 'Paper'
			expect(page).to have_content 'You lose!'
		end

		scenario 'Check if it is draw' do
			enter_name_play
			click_button 'Scissors'
			expect(page).to have_content 'Draw!'
		end
	end								

	def possible_msgs
		[:rock, :paper, :scissors].map { |shape| "The Computer chose #{shape.to_s.capitalize}" }
	end				
end	 