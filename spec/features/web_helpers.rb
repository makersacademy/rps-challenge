def sign_in_and_play
  visit '/'
  fill_in 'Player1', with: 'CaptainCode'
  click_on 'Submit'
end
