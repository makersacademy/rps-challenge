feature 'Playing the game' do

  scenario 'I can choose an option' do
    register_and_play 'Player1'
    play_game('rock')
    expect(page).to have_content('Player1 chose rock')
  end

  scenario 'Computer chooses an option' do
    register_and_play 'Player1'
    play_game('rock')
    expect(page).to have_content('Computer chose')
  end

  xscenario 'player wins' do
    register_and_play 'Player1'
    play_game('rock')
    expect(page).to have_content('You won!')
  end

  xscenario 'player loses' do
    register_and_play 'Player1'
    play_game('paper')
    expect(page).to have_content('You lost')
  end

  scenario 'can start a new game' do
    register_and_play 'Player1'
    play_game('paper')
    click_button 'Play again'
    expect(page).to have_content('Player1')
  end
end
