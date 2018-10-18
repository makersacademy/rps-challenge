def register
  visit('/')
  fill_in :name, with: 'Clare'
  click_button 'Play'
end
