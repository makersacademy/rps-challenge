def one_player_sign_in
  visit('/')
  fill_in(:one, with: 'Rick')
  click_button('Go!')
end

def two_player_sign_in
  visit('/')
  fill_in(:one, with: 'Rick')
  fill_in(:two, with: 'Morty')
  click_button('Go!')
end

def weapon_set(one, two)
  two_player_sign_in
  click_button(one)
  click_button(two)
  visit('/result')
end
