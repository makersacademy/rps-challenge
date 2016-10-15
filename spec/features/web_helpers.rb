def register_name_and_click
  visit('/')
  fill_in :name, with: 'Chet'
  click_button "3 2 1 Draw!"
end
