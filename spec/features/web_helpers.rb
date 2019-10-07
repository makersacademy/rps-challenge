def sign_in_and_play
  visit('/')
  fill_in 'player_name', with: 'Alice'
  click_button 'Submit'
end

def computer_choice(choice)
  allow_any_instance_of(Game).to receive(:random_choice).and_return(choice)
end
