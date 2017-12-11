def sign_in_single
  visit('/names?option=single')
  fill_in :player_1_name, with: "Vale"


  click_button 'Submit'
end

def sign_in_multiple
  visit('/names?option=multi')
  fill_in :player_1_name, with: "Vale"
  fill_in :player_2_name, with: "Dave"

  click_button 'Submit'
end
