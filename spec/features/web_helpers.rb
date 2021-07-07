def p1_name
  visit '/'
  fill_in 'name', with: 'Rae'
  select('RPS', from: 'rpssl')
end

def p2_name
  fill_in 'name_2', with: 'Bob'
  select('RPS', from: 'rpssl')
end

def p1_rock
  select("Rock", from: "move")
end

def p2_rock
  select("Rock", from: "move_2")
end

def submit
  click_button("Submit")
end

def names_submit
  p1_name
  p2_name
  submit
end
