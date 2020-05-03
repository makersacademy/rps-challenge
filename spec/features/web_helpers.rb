def register_name
  visit '/'
  fill_in :name, with: 'Marius'
  find_button(value: "Register").click
end
