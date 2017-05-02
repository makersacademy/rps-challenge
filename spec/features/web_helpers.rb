def single_player
  visit '/'
  click_on 'SINGLE PLAYER'
  visit '/single_player'
  fill_in :player1, with: 'Unai'
  click_on 'Submit'
end

def two_players
  visit '/'
  click_on 'TWO PLAYERS'
  fill_in :player1, with: 'Unai'
  fill_in :player2, with: 'Xabier'
  click_on 'Submit'
end
