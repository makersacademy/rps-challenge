feature 'Register name' do
  scenario 'submits their name' do
		register_and_play
		expect(page).to have_content 'Sam vs. Computer'
	end
end