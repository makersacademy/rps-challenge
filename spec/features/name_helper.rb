def enter_name_and_start(name = 'Stingray')
  visit('/')
  fill_in :name, with: name
  click_button 'Start!'
end
