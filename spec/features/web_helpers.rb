def type_name_and_play
  visit('/')
  fill_in :player_1, with: 'David'
  click_button 'Submit'
end
