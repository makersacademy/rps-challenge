def multiplayer_sign_in_and_play
  visit("/")
  click_button("Human Vs Computer")
  fill_in :players_name, with: "Mormolis"
  click_button("Play!")
end
