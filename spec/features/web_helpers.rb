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
