def register_and_play
  visit('/')
  fill_in :name, with: 'Name'
  click_button('Submit')
end
