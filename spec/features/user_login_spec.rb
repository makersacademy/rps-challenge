feature 'User Login' do
  scenario 'I should be able to enter and display my name' do
    single_player_login
    expect(page).to have_content 'Michael'
  end
end
