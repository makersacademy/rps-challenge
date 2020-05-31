def submit_name
  visit '/'
  fill_in 'name', with: 'Rae'
end

def submit_name_2
  fill_in 'name_2', with: 'Bob'
end

def submit_rock
  select("Rock", from: "move")
end

def submit
  click_button("Submit")
end
