feature 'Choice weapon' do
	scenario 'Submiting Weapon' do
		sign_in
		select('rock', from: 'your_choice')
		click_button('Play')
		expect(page).to have_content("It's a tie!")
	end
end