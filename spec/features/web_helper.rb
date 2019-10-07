def enter_name_and_click_go
  visit('/')
  fill_in 'player_1_name', with: 'Name'
  click_button 'Go!'
end
