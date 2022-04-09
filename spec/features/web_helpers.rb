def sign_in_and_play
  visit('/')
  fill_in 'Player name', with: "Michael"
  click_button 'Submit'
end
