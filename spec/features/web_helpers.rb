def sign_in_and_play_p1
  visit '/'
  fill_in('p1_name', with: 'Misa')
  click_button('Player 1: Entry')
  visit '/play'
end

def sign_in_and_play_p2
  fill_in('p2_name', with: 'Clems')
end
