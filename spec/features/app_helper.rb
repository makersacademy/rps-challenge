def enter_name_and_play
  visit '/'
  fill_in('name', with: 'Nikita')
  click_button("Let's play!")
end
