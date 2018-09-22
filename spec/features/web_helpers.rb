def visit_and_begin_game
  visit '/'
  fill_in 'player', with: "Carolina"
  click_button 'Play Game'
end
