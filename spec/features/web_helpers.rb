def enter_name
  visit ('/')
  fill_in :name, with: 'Sophie'
  click_button 'Enter name'
end
