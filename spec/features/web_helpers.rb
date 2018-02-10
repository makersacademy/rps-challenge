def sign_in_and_play
  visit '/'
  fill_in :player_1, with: "Telgi"
  fill_in :player_2, with: "Jogi"
  click_button "Submit"
end
