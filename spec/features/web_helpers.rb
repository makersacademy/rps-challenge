def sign_in_and_go
  visit('/')
  fill_in :name, with: 'James'
  click_button 'Go'
end