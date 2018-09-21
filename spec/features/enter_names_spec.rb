feature 'store names' do
  scenario 'user can enter their names' do
    visit '/'
    expect {fill_in('player1_name', with: 'john')}.not_to raise_error
  end
  scenario 'user enters name and it is stored' do
    player_signin
    expect(page).to have_content('Welcome John, to this riveting game of rock paper scissors')
  end
end