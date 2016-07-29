def sign_in_to_play
  visit '/'
  fill_in('name', with: 'Mannie')
  click_button('Play')
end
