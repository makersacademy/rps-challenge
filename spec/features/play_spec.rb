feature 'Enter your name' do
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
		expect(page).to have_content "Vytis is showing Rock"
	end	
end	