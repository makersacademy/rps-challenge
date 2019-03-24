def register_one_player(name)
  visit '/'
  click_button(value: 'one_player')
  fill_in 'player1_name', with: name
  click_button "Let's do this"
end
