def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Maja'
  click_button 'Submit and PLAY!'
end