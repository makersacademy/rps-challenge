def two_players_p1_chooses_spock
  visit ('/')
  click_on "Human"
  fill_in "p1_name", with: "Lady Macbeth"
  fill_in "p2_name", with: "Queen Gertrude"
  click_on "Enter"
  click_on "Spock"
end

def one_player_p1_chooses_rock
  visit ('/')
  click_on "Computer"
  fill_in "p1_name", with: "Lady Macbeth"
  click_on "Enter"
  click_on "Rock"
end
