def sign_in_and_play
  visit '/'
  fill_in 'Name', with: 'Laura'
  click_on('Submit')
end
