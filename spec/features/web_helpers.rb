def sign_in_and_play
  visit('/')
  fill_in 'player_name', with: "Rocky 'Scissor-Widowmaker' Balboa"
  click_button 'Submit'
end