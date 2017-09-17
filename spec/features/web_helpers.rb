def sign_in_and_play
  visit('/')
  fill_in :Player, with: "Marcus"
  click_button 'Submit'
end
