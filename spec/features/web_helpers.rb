
def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Maker'
  click_on("Submit")
end
