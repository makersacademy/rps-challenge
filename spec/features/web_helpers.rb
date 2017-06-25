
def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Maker'
  click_on("Submit")
end

def pick_rock
  click_on("Pick your weapon")
  find(:css, "#rock").set true
  click_on("Submit")
end
