def sign_in_and_play
  visit('/')
  fill_in('player_name', :with => 'Henry')
  find_button('submit').click
end
