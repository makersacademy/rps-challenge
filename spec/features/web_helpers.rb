def register_name
  visit('/')
  fill_in :marketeer1, with: 'Alex'
  click_button 'Register your name'
end
