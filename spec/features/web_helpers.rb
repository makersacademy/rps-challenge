def sign_in
  visit '/'
  fill_in "name", with: 'Matt'
  click_button 'Submit'
end

def sign_in_and_play(player_1_move)
  sign_in
  choose player_1_move
  click_button 'submit'
end
