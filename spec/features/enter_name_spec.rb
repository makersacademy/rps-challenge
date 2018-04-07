feature 'Enter your name' do
	scenario 'submitting name' do
		visit('/')
		fill_in :player_name, with: 'Vytis'
		click_button 'Submit'
		expect(page).to have_content 'Vytis against the Computer'
	end	
end	