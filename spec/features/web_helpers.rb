def sign_in_and_play
  visit '/'
  fill_in 'name', with: "Joe"
  click_button 'Play!'
end

def choose_rock
  sign_in_and_play
  select "Rock", from: 'choice'
end

def straight_to_result
  sign_in_and_play
  click_button 'Submit'
end
