def register_and_play
  visit('/')
  fill_in('name', with: 'Tim')
  click_button('submit')
end