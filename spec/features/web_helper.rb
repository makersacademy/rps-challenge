def sign_in_to_play
  visit('/')
  fill_in :player_name, with: "Dave"
  click_button 'Submit'
end
