def sing_in
  visit('/')
  fill_in('player name', with: 'Mattia')
  click_button('confirm!')
end
