def sign_in
  visit('/single_player')
  fill_in :player_1_name, with: 'Dill'
  click_button 'Submit'
end
