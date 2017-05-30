def register_name_to_play
  visit '/'
  fill_in 'player1', :with => 'Spencer'
  click_button 'Submit!'
end
