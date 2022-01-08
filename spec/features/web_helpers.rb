def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Hannah'
  click_button('Submit')
end
def play_and_lose
  allow_any_instance_of(Computer).to receive(:move).and_return('paper')
  sign_in_and_play
  select "Rock", from: 'choice'
  click_button "Submit"
end
def play_and_win
  allow_any_instance_of(Computer).to receive(:move).and_return('rock')
  sign_in_and_play
  select "Paper", from: 'choice'
  click_button "Submit"
end
