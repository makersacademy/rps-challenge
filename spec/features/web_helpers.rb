def sign_in_and_play
  visit('/')
  fill_in :player_name, with: "Human"
  click_button 'Enter Name'
end
