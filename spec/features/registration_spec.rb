feature 'player can sign in with his name' do
  scenario 'display player\'s name' do
    register_and_play(player1)
    expect(page).to have_content('player1')
  end
end
