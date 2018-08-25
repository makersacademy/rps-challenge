def sign_in
  visit('/')
  fill_in :player_name, with: "Jimmy"
  click_button 'Submit'
end
