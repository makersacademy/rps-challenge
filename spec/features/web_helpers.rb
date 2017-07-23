def sign_in_and_play
  visit('/')
  fill_in :player_one, with: 'Name One'
  fill_in :player_two, with: 'Name Two'
  click_button 'Submit'
end
