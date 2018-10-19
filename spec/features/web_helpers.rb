def sign_in_and_play(param)
  visit '/'
  fill_in('player1', with: param)
  click_button 'Submit'
end
