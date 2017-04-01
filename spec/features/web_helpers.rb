def fill_in_and_submit
  visit('/')
  click_on 'One player'
  fill_in :player, with: 'Freddy'
  click_button('Submit')
end
