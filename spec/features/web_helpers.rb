def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Bukowski'
  click_button 'Submit'
end

def winning_tests(player_1_choice, player_2_choice)
  choose(player_1_choice)
  allow(Game.instance.player_2).to receive(:weapon).and_return(player_2_choice)
  click_button('Submit')
end
