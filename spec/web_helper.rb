def enter_name_and_play
  visit '/'
  click_button 'Single player'
  fill_in :player1_name, with: 'playerX'
  click_button 'Play'
end

def enter_two_names_and_play
  visit '/'
  click_button 'Two player'
  fill_in :player1_name, with: 'playerX1'
  fill_in :player2_name, with: 'playerX2'
  click_button 'Play'
end
