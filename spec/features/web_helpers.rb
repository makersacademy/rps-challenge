def single_sign_in
  visit('/')
  fill_in :player, with: 'samir'
  click_button 'Enter Game'
  click_link 'Start Game'
end

def single_sample_games
  click_button 'Rock'
  click_button 'Play again'
  click_button 'Paper'
  click_button 'Play again'
  click_button 'Rock'
  click_button 'Play again'
  click_button 'Scissors'
  click_button 'Play again'
  click_button 'Scissors'
  click_button 'Play again'
  click_button 'Paper'
end
