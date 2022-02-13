feature 'Enter player name' do
  scenario 'Player enters their name and see it printed' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game, Sarah!'
  end
end
