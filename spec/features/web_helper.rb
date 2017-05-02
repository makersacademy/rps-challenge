def paul_sign_in
  visit('/')
  fill_in('player_1', with: 'Paul')
  click_button('OK!')
end

def paul_ready
  visit('/')
  fill_in('player_1', with: 'Paul')
  click_button('OK!')
  click_button('Play!')
end
