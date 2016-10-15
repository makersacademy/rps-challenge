def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Bob'
  click_button 'Submit'
end


def sign_in_and_play2
  visit '/'
  fill_in :player1_name, with: 'Steve'
  fill_in :player2_name, with: 'Emma'
  click_button 'Submit '
end
