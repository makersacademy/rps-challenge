def create_CK_player
  visit '/'
  fill_in 'name', with: 'Captain Kirk'
  click_on 'Transport player to game start!'
end

def create_JLP_player
  visit '/'
  fill_in 'name', with: 'Jean-Luc Picard'
  click_on 'Transport player to game start!'
end

def play_rock
  click_on "Play round"
  click_on "Rock"
end

def play_paper
  click_on "Play round"
  click_on "Paper"
end

def play_scissors
  click_on "Play round"
  click_on "Scissors"
end

def play_spock
  click_on "Play round"
  click_on "Spock"
end

def play_lizard
  click_on "Play round"
  click_on "Lizard"
end