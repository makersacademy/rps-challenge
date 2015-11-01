feature 'Playing the game' do

  scenario 'I can choose a weapon' do
    register_and_play 'Chuka'
    play_game('rock')
    expect(page).to have_content('Chuka chose rock')
  end

  scenario 'Computer chooses a weapon' do
    register_and_play 'Chuka'
    play_game('rock')
    expect(page).to have_content('Computer chose ')
  end

  xscenario 'player wins' do
    register_and_play 'Chuka'
    play_game('rock')
    expect(page).to have_content('Congratulations!')
  end

  xscenario 'player loses' do
    register_and_play 'Chuka'
    play_game('paper')
    expect(page).to have_content('Better luck next time')
  end

  scenario 'can start a new game' do
    register_and_play 'Chuka'
    play_game('paper')
    click_button 'New Game'
    expect(page).to have_content('Welcome Chuka')
  end
end
