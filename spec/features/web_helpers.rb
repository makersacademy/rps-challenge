def sign_in_and_play
  visit '/'
  fill_in 'Player 1', :with => 'Rocky'
  click_button 'Play!'
end
