def sign_in_and_play
  visit '/'
  fill_in "player_name", :with => "Russell"
  click_button "Start"
end
