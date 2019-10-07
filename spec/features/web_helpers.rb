def game_set_up
  visit('/')
  fill_in('player_1_name', with: 'Aaron')
  click_button 'Submit'
end
