def sign_in
  visit '/'
  fill_in :player_name, with: 'Alex'
  click_button 'Enter the Arena'
end

def sign_in_and_play_rock
  sign_in
  choose 'radioSelect', class: 'rock'
  click_button('Go to Battle!')
end
def sign_in_and_play_scissors
  sign_in
  choose 'radioSelect', class: 'scissors'
  click_button('Go to Battle!')
end
def sign_in_and_play_paper
  sign_in
  choose 'radioSelect', class: 'paper'
  click_button('Go to Battle!')
end
