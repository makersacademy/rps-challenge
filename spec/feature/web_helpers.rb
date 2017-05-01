def start_game
  visit '/'
  click_button 'SINGLE PLAYER'
  fill_in :name, with: 'bob'
  click_button 'submit'
end

def two_player_names
  visit '/'
  click_button 'TWO PLAYER'
  fill_in :name, with: 'bob'
  fill_in :name2, with: 'oogy'
  click_button 'submit'
end

def play_two_player
  visit '/'
  click_button 'TWO PLAYER'
  fill_in :name, with: 'bob'
  fill_in :name2, with: 'oogy'
  click_button 'submit'
  click_button 'Rock'
end
