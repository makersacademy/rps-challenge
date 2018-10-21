def enter_name_and_play
  visit '/'
  select 'One Player', from: 'players'
  click_button 'Submit'
  fill_in 'name', with: "Mittens"
  click_button 'Submit'
  select 'Rock', from: 'player_1_move'
  click_button 'Submit'
end
