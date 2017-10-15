def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Ainsley'
  click_button 'play'
end
