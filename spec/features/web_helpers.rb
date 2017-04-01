def fill_in_and_submit
  visit('/')
  fill_in :player, with: 'Freddy'
  click_button('Submit')
end
