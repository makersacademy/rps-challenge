def singlemode
  visit '/'
  click_button('One player')
  fill_in 'player_one', with: "player1"
  click_button('Play')
end

def multimode
  visit '/'
  click_button('Two players')
  fill_in 'player_one', with: "player1"
  fill_in 'player_two', with: "player2"
  click_button('Play')
end
