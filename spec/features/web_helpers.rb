def name_and_weapon
  visit '/'
  fill_in :player_1, with: 'Nick'
  fill_in :weapon, with: 'rock'
  click_button 'start game'
end
