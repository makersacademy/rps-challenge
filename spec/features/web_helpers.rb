def enter_names
  visit '/'
  fill_in :player1_name, with: 'Jack'
  fill_in :player2_name, with: 'Jill'
  click_button 'Submit'
end
