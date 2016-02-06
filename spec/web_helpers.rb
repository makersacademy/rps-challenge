def register_and_play
  visit '/'
  fill_in('player1_name', with: 'Iryna')
  click_button('Submit')
end