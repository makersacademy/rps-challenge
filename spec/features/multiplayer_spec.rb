feature 'multiplayer' do

  scenario 'two players can sign in' do
    multiplayer_start
    expect(page).to have_content 'Hulk vs. Ironman'
  end

  scenario 'player 1 can win' do
    multiplayer_start
    play_scissors
    play_paper
    expect(page).to have_content 'Hulk wins!'
  end

  scenario 'two player cab draw' do
    multiplayer_start
    play_scissors
    play_scissors
    expect(page).to have_content 'Draw!'
  end

  scenario 'player 2 can win' do
    multiplayer_start
    play_scissors
    play_rock
    expect(page).to have_content 'Hulk loses!'
  end

end