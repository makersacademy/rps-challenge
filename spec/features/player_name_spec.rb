feature 'Enter Player Name' do
  scenario 'Player can enter their name on a form' do
    sign_in
    expect(page).to have_content "Ginny vs Computer"
  end
end
