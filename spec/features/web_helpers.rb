def enter_names_and_submit
  visit('/')
  fill_in :player1, with: 'John Doe'
  fill_in :player2, with: 'Jane Doe'
  find_button('submit').click
end
puts 'Loaded web helpers'
