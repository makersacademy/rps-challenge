def name_entry_and_play
  visit '/'
  fill_in :player_name, with: 'name'
  click_button 'Play'
end
