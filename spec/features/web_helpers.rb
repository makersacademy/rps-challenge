def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Yadira'
  click_button "Let's play!"
end
