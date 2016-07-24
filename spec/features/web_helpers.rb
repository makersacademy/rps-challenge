def sign_in_and_play
  visit '/'
  fill_in "player_name", with: "Richard"
  click_button "Start"
end
