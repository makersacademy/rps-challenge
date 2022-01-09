def fill_name_and_submit
  visit '/'
  fill_in 'player_one_name', with: 'Pabllo'
  click_on 'submit'
end
