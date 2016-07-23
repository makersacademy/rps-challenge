def register_and_play
  visit '/'
  fill_in 'human_player', :with => 'Genghis'
  click_button 'ENTER NAME'
end
