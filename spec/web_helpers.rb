def enter_game
  visit('/')
  fill_in('name', :with => 'Hendrik')
  click_button 'Enter Game'
end
