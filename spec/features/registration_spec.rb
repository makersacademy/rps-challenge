feature 'Registration' do
	
	scenario 'Signing in with a name before playing' do
		visit('/')
		fill_in('name',with:'Ollie')
		click_button('Start the fun')
		expect(page).to have_content('Ok Ollie, pick your weapon')
	end

end