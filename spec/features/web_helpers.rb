def sign_in
  visit '/'
  fill_in 'name', with: "Jo Brown"
  click_button 'Enter name'
end

def sign_in_and_play(first_move = nil)
  sign_in
  click_button "Play"
  play_move(first_move) if first_move
end

def play_move(move)
  choose move
  click_button "Submit"
end
