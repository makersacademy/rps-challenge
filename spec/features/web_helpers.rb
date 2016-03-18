def sign_in_and_play
  visit '/'
  fill_in('p1_name', with: 'Misa')
  click_button('Enter Game')
  visit '/play'
end
