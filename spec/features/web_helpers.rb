def sign_in_one_player
  visit('/')
  fill_in :player1_name, with: "Adrian"
  click_button 'Submit'
end
