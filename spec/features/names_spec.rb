feature 'Display Name' do
  scenario 'Player sees their name after login' do
    sign_in_and_play
    expect(page).to have_content('Welcome Leon')
  end
end
