def sign_in_and_play
  visit('/')
  fill_in :player_name, with: "Hyko"
  click_button 'Submit'
end
