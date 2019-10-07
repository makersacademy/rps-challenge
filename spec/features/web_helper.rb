def add_suzy
  visit('/')
  fill_in 'p1name', with: 'Suzy'
  click_on "Submit"
end
