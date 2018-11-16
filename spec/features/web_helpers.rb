def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Asad"
  click_button "Submit"
end
