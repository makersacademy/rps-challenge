def visit_page_and_register
  visit('/')
  click_button('One')
  fill_in :player1_name, with: "Vic"
  click_button 'Submit'
end

def visit_page_and_register_two_players
  visit('/')
  click_button('Two')
  fill_in :player1_name, with: "Vic"
  fill_in :player2_name, with: "Bob"
  click_button('Submit')
end
