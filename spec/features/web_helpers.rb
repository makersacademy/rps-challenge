def enter_name_and_submit
  visit('/')
  fill_in('player_name', with: 'Rick')
  click_button('Submit')
end
