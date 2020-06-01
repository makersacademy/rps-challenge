def enter_name_start_game
  visit('/')
  fill_in('user_input', with: 'Al')
  click_button("Light it up!")
  click_button("Let's play!")
end
