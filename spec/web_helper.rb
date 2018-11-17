def singleplayer_entername
  visit ('/')
  click_button 'Computer'
  fill_in 'name', with: 'Tom'
  click_button 'Submit'
end

def singleplayer_move
  select 'Rock', from: 'move'
  click_button 'Submit'
end

def multiplayer_game
  visit ('/')
  click_button 'Another player'
  fill_in 'player_1_name', with: 'Tom'
  fill_in 'player_1_name', with: 'Bob'
  click_button 'Submit'
  select 'Rock', from: 'move'
  click_button 'Submit'
  click_button 'Next'
  select 'Paper', from: 'move'
  click_button 'Submit'
end
