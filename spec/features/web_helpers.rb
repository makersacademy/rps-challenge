def sign_in_single_player
  visit("/")
  click_button "Single Player"
  fill_in :player1_name, with: "Antonio"
  click_button "Submit"
end

def sign_in_multi_player
  visit("/")
  click_button "Multi Player"
  fill_in :player1_name, with: "Antonio"
  fill_in :player2_name, with: "Nick"
  click_button "Submit"
end
