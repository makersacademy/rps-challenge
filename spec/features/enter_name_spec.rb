feature 'Enter your name' do
	scenario 'submitting name' do
		enter_name_play
		expect(page).to have_content 'Vytis against the Computer'
	end	
end	