def sign_in
  visit '/'
  fill_in 'name_1', with: "Jo Brown"
  click_button 'Enter names'
end

def two_player_sign_in
  visit '/'
  fill_in 'name_1', with: "Jo Brown"
  fill_in 'name_2', with: "Mel Smith"
  click_button 'Enter names'
end

def sign_in_and_play(first_move)
  sign_in
  play_move(first_move)
end

def play_move(move)
  choose move
  click_button "Submit"
end
