def choose_solo_play_and_enter_name
  visit('/')
  click_button 'One Player'
  fill_in :player_name, with: 'Thor'
  click_button 'Submit'
end

def choose_two_man_and_enter_names
  visit('/')
  click_button 'Two Players'
  fill_in :player_1_name, with: 'Thor'
  fill_in :player_2_name, with: 'Loki'
  click_button 'Submit'
end
