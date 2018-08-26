def single_sign_in
  visit('/')
  fill_in :player, with: 'samir'
  click_button 'Enter Game'
  click_link 'Start Game'
end

def single_sample_games
  click_link 'Rock'
  click_link 'Paper'
  click_link 'Rock'
  click_link 'Scissors'
  click_link 'Scissors'
  click_link 'Paper'
end
