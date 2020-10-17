def add_name
  visit('/')
  fill_in("name", with: "Ben")
end
