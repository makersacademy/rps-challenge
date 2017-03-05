def sign_in_and_play
  visit '/'
  fill_in('player_1', with: 'Vicky')
  click_button('OK!')
end

def signed_in_and_ready
  visit '/'
  fill_in('player_1', with: 'Vicky')
  click_button('OK!')
  click_button('Ready!')
end
