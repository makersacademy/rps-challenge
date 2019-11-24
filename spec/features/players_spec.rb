feature 'players' do
  scenario 'entering the name of the players' do
    sign_in_and_play
    expect(page).to have_content "Welcome to the game Rebecca"
  end

  scenario 'expect choices to be passed to the new game' do
    sign_in_and_play
    expect(page).to have_content "Rebecca chose ROCK"
  end

  scenario 'expect multiple players to be passed to the new game' do
    sign_in_and_play_multiple
    expect(page).to have_content "Lily chose PAPER"
  end
end
