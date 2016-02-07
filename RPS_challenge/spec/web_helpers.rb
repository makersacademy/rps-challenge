def sign_in
  visit('/')
  click_button 'Play!'
  fill_in :playername, with: 'Joe Wroe'
  click_button 'Submit'
end

def continue_to_rps_selector
  click_button 'To the ringwalks!'
  click_button 'Continue'
end
