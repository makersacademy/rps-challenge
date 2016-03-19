def p1_sign_in
  visit '/'
  click_button('Player 1')
  fill_in('p1_name', with: 'Misa')
  click_button('Player 1: Entry')
end

def p2_sign_in
  visit '/'
  click_button('Player 2')
  fill_in('p2_name', with: 'Clems')
  click_button('Player 2: Entry')
end
# 
def sign_in_and_play
  p1_sign_in
  p2_sign_in
  visit '/play'
end
