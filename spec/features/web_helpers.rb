def sign_in_and_play
  visit '/'
  fill_in 'player_name', with: 'ria'
  click_on 'Submit'
end
