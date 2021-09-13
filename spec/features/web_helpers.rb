def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Laura"
  click_button 'Submit'
end