def singleplayer_entername
  visit ('/')
  find('#standard', :visible => false).click
  find('#singleplayer', :visible => false).click
  click_button 'Submit'
  fill_in 'name', with: 'Tom'
  click_button 'Submit'
end

def singleplayer_move
  select 'Rock', from: 'move'
  click_button 'Submit'
end

def multiplayer_game
  visit ('/')
  find('#standard', :visible => false).click
  find('#multiplayer', :visible => false).click
  click_button 'Submit'
  fill_in 'player_1_name', with: 'Tom'
  fill_in 'player_1_name', with: 'Bob'
  click_button 'Submit'
  select 'Rock', from: 'move'
  click_button 'Submit'
  click_button 'Next'
  select 'Paper', from: 'move'
  click_button 'Submit'
end
