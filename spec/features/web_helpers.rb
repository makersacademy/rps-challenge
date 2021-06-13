def enter_name_and_start_game
  visit '/'
  fill_in :player_1_name, with: 'Halloumi'
  click_button 'Start game!'
end

def enter_names_and_start_multiplayer
  visit '/'
  fill_in :player_1_name, with: 'Halloumi'
  fill_in :player_2_name, with: 'Pizza'
  click_button 'Start game!'
end
