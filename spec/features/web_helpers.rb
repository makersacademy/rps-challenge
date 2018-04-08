def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: "Aga"
  fill_in :player_2_name, with: "Patryk"
  click_button "Submit"
end
def player_1_rock_player2_paper
  fill_in :player_1_weapon, with: "rock"
  click_button "Submit"
  fill_in :player_2_weapon, with: "paper"
  click_button "Submit"
end
def player_1_spock_player2_rock
  fill_in :player_1_weapon, with: "spock"
  click_button "Submit"
  fill_in :player_2_weapon, with: "rock"
  click_button "Submit"
end
def player_1_lizard_player2_lizard
  fill_in :player_1_weapon, with: "lizard"
  click_button "Submit"
  fill_in :player_2_weapon, with: "lizard"
  click_button "Submit"
end
