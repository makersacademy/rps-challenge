feature 'Register name' do
  scenario 'submits their name' do
	  visit('/')
		fill_in :marketeer_name, with: 'Sam'
		click_button 'Submit'
		expect(page).to have_content 'Sam! Welcome to the Rock, Paper, Scissors Game!'
	end
end