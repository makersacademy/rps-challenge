def sign_in_to_play
  visit '/'
  fill_in :user, with: 'Bob'
  click_button 'Sign me in!'
end
