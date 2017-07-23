def sign_in_and_play
  visit "/"
  fill_in :player_name, with: "Junot"
  click_button "See your name in lights"
end
