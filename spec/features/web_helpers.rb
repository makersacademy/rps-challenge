def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Ali"
  click_button "Sumbit Name"
end

def sign_in_and_play_a_few_games
  sign_in_and_play
  click_button "Rock"
  click_button "OK"
  click_button "Rock"
  click_button "OK"
  click_button "Rock"
  click_button "OK"
end
