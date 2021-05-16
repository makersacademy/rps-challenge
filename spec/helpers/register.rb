def register(name)
  visit '/'
  fill_in('name', with: name)
  click_button('submit')
end
