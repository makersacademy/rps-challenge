def fill_in_name
  visit('/')
  fill_in :player_name, with: 'David'
  click_button('Submit')
end 
