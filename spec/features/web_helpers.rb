def enter_player_name
  visit '/'
  fill_in :player_name, with: 'Macey Forever'
  click_button 'Play'
end
