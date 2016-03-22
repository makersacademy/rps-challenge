def enter_game
  visit '/'
  click_button('Entry')
end

def p1_sign_in
  click_button('Player 1')
  fill_in('p1_name', with: 'Misa')
  click_button('Complete entry')
end

def p2_sign_in
  click_button('Player 2')
  fill_in('p2_name', with: 'Clems')
  click_button('Complete entry')
end

def both_sign_in
  p1_sign_in
  visit '/player_choice'
  p2_sign_in
end

def both_sign_in_and_enter_game
  both_sign_in
  click_button('Player 1: Play game')
  visit '/enter_game'
  click_button('Player 2: Play game')
end
