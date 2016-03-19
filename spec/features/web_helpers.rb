def fill_in_name_and_start
  visit '/'
  fill_in 'player1_name', :with => "Mario"
  click_button 'Start game'
end
