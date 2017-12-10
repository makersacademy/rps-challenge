def sign_in_and_play
  visit('/')

  fill_in :player_name, with: "Ellie"
  click_button "Play"
end

def sign_in_and_play_no_name
  visit('/')

  click_button "Play"
end
