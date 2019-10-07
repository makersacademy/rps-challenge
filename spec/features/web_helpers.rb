def sign_in_and_submit
  visit('/')
  fill_in('player_1_name', with: 'Sheldon')
  click_button('Submit')
end
