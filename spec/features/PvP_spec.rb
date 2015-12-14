feature 'allows 2 players to sign in' do
  scenario 'shows players names on game screen' do
    multi_player
    expect(page).to have_content('Player 1 vs. Player 2')
  end
end

feature '2 players can choose Rock, Paper or Scissors' do
  scenario 'Player 2 Win: player 1 chooses rock & player 2 chooses paper' do
    multi_player
    #player 1 -- rock
    #player 2 -- paper
    click_button('Go!')
    expect(page).to have_content('Player 2 WINS!')
  end
  scenario 'Player 1 Win: player 1 chooses scissors & player 2 paper' do
    multi_player
    #player 1 -- scissors
    #player 2 -- paper
    click_button('Go!')
    expect(page).to have_content('Player 1 WINS!')
  end
  scenario 'Draw: player 1 chooses rock & player 2 chooses rock' do
    multi_player
    #player 1 -- rock
    #player 2 -- rock
    click_button('Go!')
    expect(page).to have_content('ITS A DRAW!')
  end
end
