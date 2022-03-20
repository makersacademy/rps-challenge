feature 'Completing a game' do 
  scenario 'players can see a recap of the rules before starting the game' do
    play_complete_game
    expect(page).to have_content "Player 1 chose Rock\nPlayer 2 chose Paper\nPlayer 2 Wins!"
    Game.instance.reset
  end

  scenario 'players can see a recap of the rules before starting the game' do
    play_complete_game
    click_button('Play again')
    expect(page).to have_button 'Player 1 Choice'
    expect(page).to have_button 'Player 2 Choice'
    Game.instance.reset
  end
end
