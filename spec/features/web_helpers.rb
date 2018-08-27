def single_sign_in
  visit('/')
  click_button 'Single Player'
  fill_in :player, with: 'samir'
  click_button 'Enter Game'
  # click_link 'Start Game'
end

def single_sample_games
  click_button 'Rock'
  click_link 'Play again'
  click_button 'Paper'
  click_link 'Play again'
  click_button 'Rock'
  click_link 'Play again'
  click_button 'Scissors'
  click_link 'Play again'
  click_button 'Scissors'
  click_link 'Play again'
  click_button 'Paper'
end

def multi_sign_in
  visit('/')
  click_button 'Multiplayer'
  fill_in :player1, with: 'samir'
  fill_in :player2, with: 'jess'
  click_button 'Enter Game'
end
