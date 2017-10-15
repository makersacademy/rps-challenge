def sign_in_register
  visit '/'
  find('input[value="vs_computer"]').click
  fill_in :player_name, with: 'Pablo'
  click_button('Save')
end
