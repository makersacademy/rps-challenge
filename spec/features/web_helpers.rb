def game_ready
  visit '/' 
  fill_in :player_name, :with => "testplayer"
  click_button "Submit"
end