def sign_in
  visit('/')
  fill_in :player_name, with: 'Mark'
  click_button 'Submit'
end

def player_chooses_rock
  choose('move_choice', option: "Rock")
  click_button "Let's play!"
end
