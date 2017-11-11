def default_name
  'achilles'
end

def register(name = default_name)
  visit('/')
  fill_in('name', with: name)
  click_button('Begin!')
end
