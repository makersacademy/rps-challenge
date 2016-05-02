feature 'can restart game' do

  scenario 'restart game from single player' do
    sign_in_and_play
    play_scissors
    click_link 'Restart'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'restart singleplayer with same player' do
    sign_in_and_play
    play_scissors
    click_link 'Restart_Single'
    expect(page).to have_content 'Hulk vs. Computer'
  end

  scenario 'restart game from multiplayer' do
    multiplayer_start
    play_scissors
    play_scissors
    click_link 'Restart'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'restart multiplayer with same players' do
    multiplayer_start
    play_scissors
    play_scissors
    click_link 'Restart_Multi'
    expect(page).to have_content 'Hulk vs. Ironman'
  end

end