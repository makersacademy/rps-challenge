
def sign_in_and_play
  visit '/'
  fill_in :player1, with: "Malinna"
  click_button "play"
end

def choose_and_play_again
  click_button "rock"
  click_button "Play Again"
end
