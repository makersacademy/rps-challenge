def sign_in_and_play
  visit '/'
  fill_in 'Player 1', :with => "Dave"
  click_button("Submit")
end
