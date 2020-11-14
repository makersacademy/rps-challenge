def enter_name
  visit '/'
  fill_in :player_1_name, with: 'Symion'
  click_button('Submit!')
end
