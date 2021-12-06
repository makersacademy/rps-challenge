feature 'Signing in the game' do
  scenario 'fill in with player name' do
    sign_in_and_play
    expect(page).to have_content('Bot🤖 vs. 😊Pikachu')
  end
end
