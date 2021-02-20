def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Pete')
  click_button('Play')
end
