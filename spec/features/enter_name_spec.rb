
feature 'Enter name' do
  scenario 'return player names' do
    player1_sign_in
    expect(page).to have_content('Mary')
  end
end
