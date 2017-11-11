def default_name
  'achilles'
end

def register(name = default_name)
  visit('/')
  fill_in('p1', with: name)
  click_button('Begin!')
end
