def sign_in_and_play
  visit('/')
  fill_in(:name, with: 'Adam')
  click_button('Play')
end
