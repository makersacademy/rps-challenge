def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Josh'
  click_on 'Submit'
end
