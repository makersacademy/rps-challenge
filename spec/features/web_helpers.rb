def sign_in 
  visit("/")
  fill_in "player_1", with: "test_player_1"
  fill_in "player_2", with: "test_player_2"
  click_on "Submit"
end

def choose_rock
  choose "rock"
  click_on "submit"
end

def choose_paper
  choose "paper"
  click_on "submit"
end

def choose_scissors
  choose "scissors"
  click_on "submit"
end