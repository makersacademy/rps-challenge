def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Lanie"
  click_button "Submit"
end

def enter_multiplayer
  fill_in :player_2_name, with: "Ada"
  click_button "Submit"
end
