
def sign_in_and_play
  visit('/')
  fill_in 'player', with: 'Maker'
  click_on("Submit")
end
