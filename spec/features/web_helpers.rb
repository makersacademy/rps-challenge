def register_one_player(name)
  visit '/'
  click_button(value: 'one_player')
  fill_in 'player1_name', with: name
  click_button "Let's do this"
end

def register_two_players(name1, name2)
  visit '/'
  click_button(value: 'two_player')
  fill_in 'player1_name', with: name1
  fill_in 'player2_name', with: name2
  click_button "Let's do this"
end
