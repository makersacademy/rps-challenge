def sign_in
  visit '/'
  fill_in :player_1, with: 'Volker'
  click_button 'Submit'
end
