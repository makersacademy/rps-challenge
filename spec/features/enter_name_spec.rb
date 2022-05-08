feature 'Enter name' do
  scenario 'player enter their name' do
    player_login
    expect(page).to have_content "Today has come to play...: ERLANTZ!!!"
  end
end
