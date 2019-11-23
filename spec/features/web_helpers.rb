def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Rebecca"
  fill_in :choice, with: 'ROCK'
  click_button 'Submit'
end
