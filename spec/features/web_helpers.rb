require 'game'

def sign_in
  allow_any_instance_of(Game).to receive(:generate_move).and_return("PAPER")
  
  visit ('/')
  fill_in('player1', with: 'Patos')
  click_button('START')
end
