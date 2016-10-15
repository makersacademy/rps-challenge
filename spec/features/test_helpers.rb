def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Kath'
  click_button "Press on"
end
