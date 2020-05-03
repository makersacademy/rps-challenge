feature 'ai has a name' do
  scenario 'ai name is displayed when signing in' do
    sign_in
    expect(page).to have_content('Player 2: 愛')
  end
end
