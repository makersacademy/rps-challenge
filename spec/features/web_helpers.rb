def visit_root_and_enter_name
  visit('/')
  fill_in 'player', with: 'Alice'
  click_button 'Go!'
end

def enter_move(move)
  click_button move
end

def result_vs_rock(move)
  return case move
    when 'rock'; 0
    when 'paper'; 1
    when 'scissors'; -1
    else
         end
end
