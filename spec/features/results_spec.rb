feature 'Results' do
  scenario 'generates a draw result' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    play_game
    expect(page).to have_content('It\'s a draw!')
  end

  scenario 'generates a win result' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    play_game
    expect(page).to have_content('You won the game!')
  end

  scenario 'generates a lose result' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    play_game
    expect(page).to have_content('You lose the game!')
  end
end
