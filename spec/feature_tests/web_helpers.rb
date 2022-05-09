def enter_name
  visit("/")
  fill_in 'name', with: 'Simon'
  click_on "I'm ready"
end
