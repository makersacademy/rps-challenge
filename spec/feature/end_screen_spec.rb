feature 'End Screen' do
  scenario 'Player 1 wins - name shown' do
    win_singleplayer
    expect(page).to have_content('Chris Wins!')
  end
  scenario 'Player 2 is Computer in singleplayer' do
    lose_singleplayer
    expect(page).to have_content('Computer Wins!')
  end
  scenario 'Moves are shown' do
    win_singleplayer
    expect(page).to have_content('Chris Played: Lizard')
    expect(page).to have_content('Computer Played: Spock')
  end
  scenario 'Player 2 wins - name shown' do
    play_multiplayer
    choose('scissors')
    click_button('Play Move!')
    choose('spock')
    click_button('Play Move!')
    expect(page).to have_content('James Wins!')
  end
  scenario 'Option to play again' do
    win_singleplayer
    expect(page).to have_selector(:link_or_button, 'Play Again?')
  end
end
