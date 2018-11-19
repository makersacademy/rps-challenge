def register_player
  visit '/register'
  fill_in('player1', with: 'Wayne')
  click_button('Submit')
end

def register_and_choose
  visit '/register'
  fill_in('player1', with: 'Wayne')
  click_button('Submit')
  click_button('Paper')
end
