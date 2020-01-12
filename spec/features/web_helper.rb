def log_in
  visit '/'
  fill_in 'name', with: 'Umberto'
  click_button 'Submit'
end

def player1_win
  choose(option: 'rock')
  allow(RpsGame::MOVES).to receive(:sample) { 'scissor' }
  click_button 'Play!'
  click_button 'Play again'
end

def player2_win
  choose(option: 'rock')
  allow(RpsGame::MOVES).to receive(:sample) { 'paper' }
  click_button 'Play!'
  click_button 'Play again'
end