def choose_name_and_weapon
  visit '/'
  fill_in 'player_name', with: 'Adam'
  select 'rock', from: 'weapon'
  click_button 'Submit'
end
