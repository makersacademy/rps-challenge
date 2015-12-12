def visit_page_and_register
  visit('/')
  fill_in :player_name, with: "Vic"
  click_button 'Submit'
end
