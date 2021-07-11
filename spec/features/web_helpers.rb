def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Omni-Man'
  click_button "Let's play!"
end