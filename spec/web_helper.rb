def sign_in
  visit '/'
  fill_in 'player_1', with: 'Ajay'
  click_button 'Submit'
end

def choose_scissors
  choose 'Scissors'
  click_button "Submit"
end
