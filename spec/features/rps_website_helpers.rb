def enter_name
  visit('/')
  fill_in('player_1', with: 'Ian')
  click_button('Submit')
end
