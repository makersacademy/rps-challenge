def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Hulk'
  click_button "Submit"
end

def play_scissors
  choose('scissors')
  click_button 'Submit'
end