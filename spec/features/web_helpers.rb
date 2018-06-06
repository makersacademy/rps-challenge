def register_to_play
  visit('/')
  fill_in('name', with: 'Pookie')
  click_button('Submit')
end
