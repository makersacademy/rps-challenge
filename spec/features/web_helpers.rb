def register
  visit('/')
  fill_in :name, with: 'Antonio'
  click_button 'Submit'
end
