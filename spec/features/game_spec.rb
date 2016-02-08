feature 'Playing the game' do

  scenario 'I can choose an option' do
    register_and_play
    play_game('rock')
    expect(page).to have_content('player1 chose rock')
  end

  scenario 'Computer chooses an option' do
    register_and_play
    play_game('rock')
    expect(page).to have_content('Computer chose')
  end

  scenario 'player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    register_and_play
    play_game('rock')
    expect(page).to have_content('You won!')
  end

  scenario 'player loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    register_and_play
    play_game('paper')
    expect(page).to have_content('You lost')
  end

  scenario 'can start a new game' do
    register_and_play
    play_game('paper')
    click_button 'Play again'
    expect(page).to have_content('player1')
  end
end
