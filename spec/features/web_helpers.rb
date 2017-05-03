def sign_in_and_play
  visit '/'
  fill_in :player, with: 'Cristina'
  click_button 'Submit'
end
