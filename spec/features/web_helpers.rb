def enter_name_and_submit
  visit('/')
  fill_in('player_name', with: 'p1')
  click_button('Submit')
end
