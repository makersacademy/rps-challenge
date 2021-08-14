def visit_root_and_enter_name
  visit('/')
  fill_in 'player', with: 'Alice'
  click_button 'Go!'
end

def enter_move(move)
  click_button move
end
