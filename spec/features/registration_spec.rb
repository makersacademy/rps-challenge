feature 'Registration' do
	
  scenario 'Signing in with a single name before playing' do
    sign_in_single
    expect(page).to have_content('Ollie takes on THE MACHINE')
  end
  scenario 'Signing in with two names before playing' do
    sign_in_double
    expect(page).to have_content('Ollie takes on Laura')
  end

end