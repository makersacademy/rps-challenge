def play_two_player
  visit("/")
  fill_in "p1_name", :with => "Beast"
  fill_in "p2_name", :with => "Magneto"
  click_button("start_game")
end

def play_vs_computer
  visit("/")
  fill_in "p1_name", :with => "Beast"
  fill_in "p2_name", :with => "AI Magneto"
  choose("player_2_type", {:option => "computer"})
  click_button("start_game")
end

def player_1_won
  play_two_player
  choose("p1_choice", {:option => "lizard"})
  click_button('p1_move')
  choose("p2_choice", {:option => "spock"})
  click_button('p2_move')
end

def player_2_won
  play_two_player
  choose("p1_choice", {:option => "rock"})
  click_button('p1_move')
  choose("p2_choice", {:option => "paper"})
  click_button('p2_move')
end

def draw
  play_two_player
  choose("p1_choice", {:option => "rock"})
  click_button('p1_move')
  choose("p2_choice", {:option => "rock"})
  click_button('p2_move')
end
