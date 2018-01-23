def start_game
  visit ('/')
  fill_in('player1_name', :with => 'Lewis')
  fill_in('player2_name', :with => 'Frank')
  click_button 'Submit'
end
