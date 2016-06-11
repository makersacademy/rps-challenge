feature 'Log-in' do
  scenario 'Registering a name before starting a game' do
    sign_in
    expect(page).to have_content "Welcome Crescenzo!"
  end
end
