def input_names(name)
  visit '/'
  fill_in("name", with: name)
  click_button("submit")
end
