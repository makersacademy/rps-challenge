def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Lord Megatron'
  click_button 'Janken!'
end

def winning_decisions_confirmed
  allow_any_instance_of(Array).to receive(:sample).and_return("SCISSORS")
  sign_in_and_play
  choose "ROCK"
  click_button "My choice is made"
  click_button "Im ready! Have at ye evil robot!"
end

def decisions_confirmed
  sign_in_and_play
  choose "ROCK"
  click_button "My choice is made"
  click_button "Im ready! Have at ye evil robot!"
end

def victory
  winning_decisions_confirmed
  click_button "I'm not afraid! Lets do this!"
  click_button "Play again!"
  2.times do
    choose "ROCK"
    click_button "My choice is made"
    click_button "Im ready! Have at ye evil robot!"
    click_button "I'm not afraid! Lets do this!"
    click_button "Play again!"
  end
end