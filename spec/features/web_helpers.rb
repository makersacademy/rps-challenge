def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Hannah'
  click_button "Submit"
end
def play
  allow_any_instance_of(Computer).to receive(:move).and_return('rock')
  sign_in_and_play
  fill_in("move", with: 'scissors')
  click_button "Submit"
end
