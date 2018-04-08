feature 'Gameplay' do
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

	scenario 'computer chooses an option' do
		enter_name_play
		click_button 'Rock'

		message = find(:css, "#computer").text

		expect(possible_msgs).to include message
	end

	def possible_msgs
		[:rock, :paper, :scissors].map { |shape| "The Computer chose #{shape.to_s.capitalize}" }
	end				
end	 