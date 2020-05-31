def submit_name
  visit '/'
  fill_in 'name', with: 'Rae'
  click_button('Submit')
end

def submit_name_2
  visit '/'
  fill_in 'name_2', with: 'Bob'
  click_button('Submit')
end

def submit_rock
  select("Rock", from: "move")
  click_button('Submit')
end
