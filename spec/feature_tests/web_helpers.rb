def sign_in
  visit '/'
  fill_in :player_name, with: 'Holly'
  click_button ('Submit')
end

def player_picks_weapon
  have_button "ROCK"
  have_button "PAPER"
  have_button "SCISSORS"
  click_button 'ROCK'
end
