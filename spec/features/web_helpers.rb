def mode_one_player_classic
  visit("/")
  choose("one")
  choose("classic")
  click_button("Submit")
  fill_in :player_1_name, with: "Sergio"
  click_button("Submit")
end

def mode_one_player_spock
  visit("/")
  choose("one")
  choose("spock")
  click_button("Submit")
  fill_in :player_1_name, with: "Sergio"
  click_button("Submit")
end

def mode_two_players_classic
  visit("/")
  choose("two")
  choose("classic")
  click_button("Submit")
  fill_in :player_1_name, with: "Sergio"
  fill_in :player_2_name, with: "Paco"
  click_button("Submit")
end

def mode_two_players_spock
  visit("/")
  choose("two")
  choose("spock")
  click_button("Submit")
  fill_in :player_1_name, with: "Sergio"
  fill_in :player_2_name, with: "Paco"
  click_button("Submit")
end