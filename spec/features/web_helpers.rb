def one_player
  visit '/'
  fill_in :player_1_name, with: 'Symion'
  fill_in :player_2_name, with: 'Computer'
  click_button 'Submit!'
end

def two_players
  visit '/'
  fill_in :player_1_name, with: 'Symion'
  fill_in :player_2_name, with: 'Sandy'
  click_button 'Submit!'
end
