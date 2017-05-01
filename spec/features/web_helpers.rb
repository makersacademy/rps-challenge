def sign_in_and_play
  visit('/')
  click_button "Let's play!"
  fill_in :player_1_name, with: 'Bill'
  fill_in :player_2_name, with: 'Ted'
  click_button 'Submit'
end

def first_round
  srand(38)
  click_button "OK"
end
