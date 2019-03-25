def sign_in_and_play
  visit('/')
  fill_in :name, with: 'James'
  click_button 'Lets play!'
end

# important to require this file in our spec_helpers
