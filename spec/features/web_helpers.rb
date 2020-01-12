def sign_in_and_play
  visit '/'
  fill_in 'player1', :with => 'name1'
  click_button "LET'S PLAY"
end
