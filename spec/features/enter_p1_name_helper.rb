def enter_p1_name
  visit('/')
  fill_in :p1_name, with: 'Pikachu'
  click_button 'Enter Game'
end
