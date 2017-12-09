def sign_in
  visit('/names')
  fill_in :player_name, with: "Vale"
  click_button 'Submit'
end
