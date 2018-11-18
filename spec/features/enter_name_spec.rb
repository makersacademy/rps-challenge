feature 'Enter names' do
	scenario 'Submiting names' do
		sign_in_and_play
		expect(page).to have_content 'The result is .... You won'
	end
end