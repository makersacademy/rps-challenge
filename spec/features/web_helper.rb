def sign_in_and_play
  allow_any_instance_of(Object).to receive(:weapon).and_return(:scissors)
  visit('/')
  fill_in :player, with: "Peter"
  click_button 'Submit'
end
