def sign_in_with_name
  visit('/')
  click_button('1-player')
  fill_in('Player1 name', with: 'Eirik')
  click_button('Submit')
end

def sign_in_multiplayer
  visit('/')
  click_button('2-player')
  fill_in('Player1 name', with: 'Eirik')
  fill_in('Player2 name', with: 'Cleme')
  click_button('Submit')
end
