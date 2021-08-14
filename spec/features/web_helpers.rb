def sign_in_and_play(seed = 1)
  srand(seed)
  visit('/')
  fill_in 'name', with: 'Ed'
  click_button("Let's Play!")
end

def player_chooses_rock
  choose 'Rock'
  click_button 'Confirm Choice'
end
