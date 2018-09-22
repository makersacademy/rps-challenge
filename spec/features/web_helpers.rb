def name_and_submit
  visit ('/')
  fill_in 'player1', with: 'Ayodele Alakija'
  click_button 'Submit'
end
