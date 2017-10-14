def sign_in_register
  visit '/'
  fill_in :player_name, with: 'Pablo'
  click_button('Save')
end
