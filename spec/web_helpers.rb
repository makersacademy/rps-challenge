def sign_in_and_play
  visit '/'
  fill_in :player_name, with: "Noa"
  click_button "Let's play!"
end
