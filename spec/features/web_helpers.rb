def one_player_battle_setup
  visit('/')
  click_button "1 Player"
  fill_in :player_1_name, with: "Sir R Spec"
  click_button "Go"
end

def two_player_battle_setup
  visit('/')
  click_button "2 Player"
  fill_in :player_1_name, with: "Sir R Spec"
  fill_in :player_2_name, with: "Lady Capybara"
  click_button "Go"
end
