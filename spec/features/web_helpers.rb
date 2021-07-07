def single_sign_in
  visit('/')
  click_button 'Single Player'
  fill_in :player, with: 'samir'
  click_button 'Enter Game'
end

def multi_sign_in
  visit('/')
  click_button 'Multiplayer'
  fill_in :player1, with: 'samir'
  fill_in :player2, with: 'jess'
  click_button 'Enter Game'
end

def multi_play_game
  click_link 'Start Game'
  find('[name=Paper1]').click
  find('[name=Rock2]').click
  click_button 'See who won'
end
