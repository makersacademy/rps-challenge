def single_player
  visit('/')
  click_button 'Single Player Mode'
  fill_in :player_1_name, with: 'Unicorn'
  click_button 'Submit'
end

def multiplayer
  visit('/')
  click_button 'Two Player Mode'
  fill_in :player_1_name, with: 'Narwhal'
  fill_in :player_2_name, with: 'Horse'
  click_button 'Submit'
end