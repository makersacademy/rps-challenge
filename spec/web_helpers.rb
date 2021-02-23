def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Pete')
  click_button('Play')
end

def sign_in_and_play_rps
  sign_in_and_play
  click_button('RPS')
end
