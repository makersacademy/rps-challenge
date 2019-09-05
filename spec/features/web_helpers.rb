def sign_in_and_play
  visit('/')
  fill_in 'Player1', with: "Dan"
  fill_in 'Player2', with: "Millie"
  click_button "Submit"
end