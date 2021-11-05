def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Ryan'
  fill_in :computer_name, with: 'Imposter Ryan'
  click_button 'Submit'
end