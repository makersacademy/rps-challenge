def sign_in_and_play
  visit('/')
  fill_in :player_one, with: 'Name One'
  click_button 'Submit'
end
