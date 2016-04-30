feature 'Registration' do
	
  scenario 'Signing in with a name before playing' do
    sign_in
    expect(page).to have_content('Ok Ollie, pick your weapon')
  end

end