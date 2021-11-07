def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Albert'
  click_button 'Submit'
end

def choose_rock
  choose('choice', option: 'Rock')
  click_on('Submit choice')
end
