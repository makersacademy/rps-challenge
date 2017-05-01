feature 'playing the game' do
  scenario 'expects main page to be loaded' do
    visit '/'
    expect(page).to have_content "THE EPIC SHOWDOWN"
  end

  scenario 'expects bored person to fill in name' do
    start_game
    expect(page).to have_content "LET THE GAMES BEGIN bob"
  end

  scenario 'expects bored person to start game on submission' do
    start_game
    expect(page).to have_content 'LET THE GAMES BEGIN'
  end

  scenario 'expects bored person to be able to play' do
    start_game
    click_button 'Rock'
  end

  scenario 'expects bored person to see his selection' do
    start_game
    click_button 'Rock'
    expect(page).to have_content "RESULT:"
  end

  scenario 'expects bored individuals to play together' do
    visit '/'
    click_button 'TWO PLAYER'
    expect(page).to have_content "THE CHALLENGER"
  end

  scenario 'expects bored individuals to play together' do
    two_player_names
    expect(page).to have_content "bob vs oogy"
  end

  scenario 'expects bored individuals to swap turns' do
    play_two_player
    expect(page).to have_content "oogy's turn"
  end

  scenario 'expects bored individuals to have an outcome' do
    play_two_player
    click_button 'Paper'
    expect(page).to have_content "oogy WINS"
  end
end
