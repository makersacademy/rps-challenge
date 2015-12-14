def single_player
  visit '/'
  click_button('1 Player')
  fill_in(:player_1, with: 'James')
  click_button('Submit')
end

def multi_player
  visit '/'
  click_button('2 Player')
  fill_in(:player_1, with: 'Player 1')
  fill_in(:player_2, with: 'Player 2')
  click_button('Submit')
end
