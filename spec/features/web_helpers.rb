def sign_in_and_play
  visit '/'
  fill_in "player_name", :with => "George"
  click_button("Save")
end

def play_whole_game
  sign_in_and_play
  click_button("Rock")
  click_button("Computer's choice")
  click_button("Who wins?")
end
