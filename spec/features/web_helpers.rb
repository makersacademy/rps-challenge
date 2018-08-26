def single_sign_in
  visit('/')
  fill_in :player, with: 'samir'
  click_button 'Enter Game'
  click_link 'Start Game'
end

def single_sample_games
  click link 'Rock'
  click link 'Paper'
  click link 'Rock'
  click link 'Scissors'
  click link 'Scissors'
  click link 'Paper'
end
