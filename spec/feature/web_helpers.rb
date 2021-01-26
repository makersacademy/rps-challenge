def sign_in_and_play 
  visit('/')
      fill_in("player", with: "Katy")
      click_button("Let's do this!")
end