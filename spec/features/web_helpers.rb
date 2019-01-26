def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'Jill')
  click_button('Submit')
end

def choose_rock_and_scissors
  allow(Game).to receive(:generate_weapon).and_return(Scissors)
  click_button('Rock')
end

