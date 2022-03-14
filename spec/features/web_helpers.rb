def register
  visit('/')
  fill_in :player1, with: 'Tinda'
  click_button 'Register'
end
