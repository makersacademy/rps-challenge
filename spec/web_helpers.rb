def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Pete')
  click_button('Play')
end

def sign_in_and_play_rps
  visit '/'
  fill_in('name', with: 'Pete')
  click_button('Play')
  click_button('rps')
end
