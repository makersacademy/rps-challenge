def sign_in_and_play
  visit('/game')
  fill_in :player, with: 'Pop'
  click_button "Submit"
end

def sign_in_two_players
  visit('/game_vs')
  fill_in :player1, with: 'Pop'
  fill_in :player2, with: 'Bob'
  click_button "Submit"
end
