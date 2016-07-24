def single_mode_sign_in_and_play
  visit'/'
  click_button "single_player"
  fill_in "player_1", :with => "Samed"
  click_button "Submit"
end

def multi_mode_sign_in_and_play
  visit '/'
  click_button "multi_player"
  fill_in "player_1", :with => "Samed"
  fill_in "player_2", :with => "Tom"
  click_button "Submit"
end 
