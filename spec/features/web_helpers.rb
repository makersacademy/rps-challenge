def sign_in_register
  visit '/'
  find('input[value="vs_computer"]').click
  fill_in :player_name, with: 'Pablo'
  click_button('Save')
end

def sign_in_register_two
  visit '/'
  find('input[value="vs_player"]').click
  fill_in :player_name_one, with: 'Pablo'
  fill_in :player_name_two, with: 'Sonia'
  click_button('Save')
end
