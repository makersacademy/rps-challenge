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
		expect(page).to have_content "You chose Rock"
	end

	scenario 'computer chooses a random option' do
		enter_name_play
		srand(PLAY_SEED)
		click_button 'Rock'
		expect(page).to have_content 'The Computer chose Scissors'
	end

	def possible_msgs
		[:rock, :paper, :scissors].map { |shape| "The Computer chose #{shape.to_s.capitalize}" }
	end				
end	 