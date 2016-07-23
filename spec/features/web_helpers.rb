def sign_in
  visit '/'
  fill_in :player_1_name, with: 'Alex'
  click_button 'Submit'
end

def player_1_rock
  page.choose('Rock')
  find_button('Select your weapon!').click
end

def player_1_paper
  page.choose('Paper')
  find_button('Select your weapon!').click
end

def player_1_scissors
  page.choose('Scissors')
  find_button('Select your weapon!').click
end
