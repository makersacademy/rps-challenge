def sign_in_and_play
  visit('/')
  fill_in('player', with: 'Andrew')
  click_on('Submit')
end
