feature 'Enter name' do
	scenario 'Submiting name' do
		sign_in
		expect(page).to have_content 'Hey Dave!'
	end
end