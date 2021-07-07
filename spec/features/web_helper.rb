def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Nigel'
  click_button 'Go!'
end

def chose_rock
  sign_in_and_play
  choose 'Rock'
  click_button 'Submit'
end

def chose_paper
  sign_in_and_play
  choose 'Paper'
  click_button 'Submit'
end
