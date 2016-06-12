feature 'Log-in' do
  scenario 'single player game' do
    sign_in
    expect(page).to have_content "Welcome Crescenzo!"
  end


end
