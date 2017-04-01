def choose_solo_play_and_enter_name
  visit('/')
  click_button 'One Player'
  fill_in :player_name, with: 'Thor'
  click_button 'Submit'
end
