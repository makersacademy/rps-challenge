feature 'Choice Entry Pages' do 
  scenario 'player 1 has a page where they can make a choice' do
    setup_1_player('Marketeer 1')
    click_button('Continue to Game')
    expect(page).to have_button 'Player 1 Choice'
    click_button('Player 1 Choice')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    Game.instance.reset
  end

  scenario 'a multiplayer game has a page for player 2 to make choices as well' do
    setup_2_players('Marketeer 1', 'Marketeer 2')
    click_button('Continue to Game')
    expect(page).to have_button 'Player 1 Choice'
    expect(page).to have_button 'Player 2 Choice'
    click_button('Player 2 Choice')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    Game.instance.reset
  end
end
