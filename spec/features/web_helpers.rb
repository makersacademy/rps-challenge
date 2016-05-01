def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Lord Megatron'
  click_button 'Janken!'
end

def decisions_confirmed
  sign_in_and_play
  choose "ROCK"
  click_button "My choice is made"
  click_button "Im ready! Have at ye evil robot!"
end