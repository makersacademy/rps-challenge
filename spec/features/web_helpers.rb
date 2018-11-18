def details
  visit "/"
  fill_in :name_1, with: "Kirill"
  choose(option: "computer")
  choose(option: "rock")
end
