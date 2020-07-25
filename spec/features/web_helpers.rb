def sign_in
  visit '/'
  fill_in :player_name, with: 'Ralph'
  click_button 'Go!'
end

def sign_in_and_play
  sign_in
  select('Paper', from: 'option')
  click_button 'Play!'
end
