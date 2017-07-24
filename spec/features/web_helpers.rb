def sign_in_and_play(computer_opponent = false)
  visit('/')
  fill_in :player_one, with: 'Name One'
  fill_in :player_two, with: 'Name Two' unless computer_opponent
  click_button 'Submit'
end
 
