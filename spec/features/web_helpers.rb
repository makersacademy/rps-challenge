def sign_in_and_play
  visit("/")
  fill in :playername, with: "Testplayer"
  click_button "Submit"
