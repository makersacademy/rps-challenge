# DRY up code with helpers

def sign_in_and_play
  visit('/register')
  fill_in :p1_name_input, with: 'Me'
  click_button 'Submit'
end
