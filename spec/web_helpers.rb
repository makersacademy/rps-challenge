
def sign_in
  visit('/')
  fill_in :player1_name, with: 'Scott'
  click_button 'Submit'
end
