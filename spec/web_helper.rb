def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Tristan')
  click_button('Play')
end
