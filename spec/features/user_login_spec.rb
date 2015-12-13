feature 'User Login' do
  scenario 'I should be able to enter and display my name' do
    single_player_login
    expect(page).to have_content 'Michael'
  end

  scenario 'I should be able to play as 2 players' do
    two_player_login
    expect(page).to have_content 'Michael vs. Lach'
  end
end
