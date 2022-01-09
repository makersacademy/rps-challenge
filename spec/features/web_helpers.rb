def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Rambo'
  click_on 'Submit'
end

def move_selection
  srand(4)
  click_on 'Rock'
end
