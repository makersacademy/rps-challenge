def enter_name_and_play
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
end
