def enter_name
  visit '/'
  fill_in :name, with: 'Abigail'
  click_button 'Play!'
end
