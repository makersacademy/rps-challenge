def sign_in_and_play
  visit '/'
  fill_in :player, with: 'Jon'
  click_button('Play')
end
