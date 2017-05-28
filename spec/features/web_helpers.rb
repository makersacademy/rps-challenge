def sign_in_and_play
  visit '/'
  fill_in :player_name, with: "Marketeer"
  click_button 'Submit'
end

def play_as_rock
  visit '/'
  fill_in :player_name, with: "Rock Fan"
  click_button 'Submit'
  choose("r")
  click_button 'Submit'
end
