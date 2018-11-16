def sign_in
  visit '/'
  fill_in 'name', with: "Jo Brown"
  click_button 'Enter name'
end

def sign_in_and_play(first_move = nil)
  sign_in
  click_button "Play"
  return unless first_move
  choose first_move
  click_button "Submit"
end
