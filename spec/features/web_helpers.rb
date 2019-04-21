def sign_in_and_submit
  visit('/')
  fill_in('player_1_name', with: 'Sheldon')
  fill_in('player_2_name', with: 'Penny')
  click_button('Submit')
end
