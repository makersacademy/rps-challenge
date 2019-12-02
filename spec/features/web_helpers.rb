def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Juan'
  click_button 'Submit'
end

def selecting_rock
  select("Rock", from: "rps")
  click_button 'Submit'
end
