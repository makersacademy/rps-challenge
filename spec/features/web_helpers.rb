def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Hannah'
  click_button('Submit')
end
def play_and_lose
  allow_any_instance_of(Computer).to receive(:move).and_return('paper')
  sign_in_and_play
  fill_in("choice", with: 'scissors')
  click_button "Submit"
end