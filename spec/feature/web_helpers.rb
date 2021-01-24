def sign_in_and_play 
  visit('/')
      fill_in("player_1", with: "Katy")
      click_button("Let's do this!")
end