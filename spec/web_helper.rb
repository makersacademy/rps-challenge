def enter_name_and_play
  visit '/'
  fill_in :player_name, with: 'playerX'
  click_button 'Play'
end
