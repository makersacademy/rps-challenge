feature 'Add a player name' do
  scenario 'player can see their name once registered to play' do
    sign_in_and_play
    expect(page).to have_content('Pamela VS.')
  end

end