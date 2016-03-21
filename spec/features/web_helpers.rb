def single_player_sign_in
  visit '/'
  click_button('One player')
  fill_in('player1', :with => 'Shane')
  fill_in('points', :with => 10)
  click_button('Play')
end

def single_player_next_from_win
  visit '/'
  click_button('One player')
  fill_in('player1', :with => 'Shane')
  fill_in('points', :with => 10)
  click_button('Play')
  allow(Kernel).to receive(:rand).and_return(2)
  click_button('Rock')
  click_button('Next round')
end
