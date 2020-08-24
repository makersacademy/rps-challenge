feature 'Result' do 

	scenario 'Displays player choice' do
		sign_in_and_play
		visit('/arena')
		click_button 'Paper'
		expect(page).to have_content "You chose Rock!"
	end

end
