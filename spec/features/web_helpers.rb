def name_entry_and_play
  visit '/'
  fill_in :Player, with: 'name'
  click_button 'Play'
end
