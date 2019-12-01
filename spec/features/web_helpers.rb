def name_entry
  visit('/')
  fill_in :name, :with => "Sigismund"
  click_on "Go!"
end
