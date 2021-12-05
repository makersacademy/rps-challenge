

def add_name
  visit('/')
  fill_in 'player', with: 'Danish'
  click_button 'Submit'
end