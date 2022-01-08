def fill_name_and_submit
  visit '/'
  fill_in 'player_1_name', with: 'Pabllo'
  click_on 'submit'
end
