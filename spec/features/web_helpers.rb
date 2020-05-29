def submit_name
  visit '/'
  fill_in 'name', with: 'Rae'
  click_button('Submit')
end

def submit_rock
  select("Rock", from: "move")
  click_button('Submit')
end
