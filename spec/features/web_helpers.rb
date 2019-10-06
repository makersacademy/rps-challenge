def single_sign_in
  visit('/')
  click_button 'Single Player'
end

def single_sign_in_and_play
  visit('/')
  click_button 'Single Player'
  fill_in :name, with: "Player1"
  click_button 'Submit'
end
