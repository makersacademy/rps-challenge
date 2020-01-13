def visit_submit_name
  visit('/')
  fill_in :player_1_name, with: "Kittens"
  click_button 'Submit'
end
