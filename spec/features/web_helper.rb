def sign_in_and_play
  visit('/') # Visit the page
  fill_in :player_name, with: "Connie" # Fill in name.
  click_button('Submit') # Submit it.
end 
