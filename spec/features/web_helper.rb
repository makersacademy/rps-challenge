def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Timon'
  fill_in :player2, with: 'Pumba'
  click_button "Submit"
end
