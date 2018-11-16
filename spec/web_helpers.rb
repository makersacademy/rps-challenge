def visit_and_fill_in_player_name
  visit('/')
  fill_in 'player_name', with: 'Karen'
  click_button "Play!"
end
