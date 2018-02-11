feature 'return to starting page' do
  scenario 'game is over, return to start button' do
    sign_in_and_play
    click_button 'I wanna rock, ROCK!'
    click_button 'Replay the game?'
  end
end
