def sign_in_and_play
  visit("/")
  fill_in('Player1', with: 'Beca')
  click_button('Play')
end
