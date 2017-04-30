def paul_sign_in
  visit('/')
  fill_in('player', with: 'Paul')
end
