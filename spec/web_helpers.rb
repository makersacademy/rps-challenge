def register_and_play
  visit('/')
  fill_in :player_1_name, with: 'Rob'
  click_button 'Submit'
end