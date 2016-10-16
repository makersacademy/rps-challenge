def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Ali"
  click_button "Submit Name"
end

def sign_in_and_play_a_few_games
  sign_in_and_play
  click_button "ROCK"
  click_button "OK"
  click_button "ROCK"
  click_button "OK"
  click_button "ROCK"
  click_button "OK"
end
