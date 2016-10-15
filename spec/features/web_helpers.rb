def register
  visit('/')
  fill_in(:player_name, with: "Maximus")
  click_button("Submit")
end

def get_to_play_screen
  visit('/')
  fill_in(:player_name, with: "Maximus")
  click_button("Submit")
  click_link("OK")
end