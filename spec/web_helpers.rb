def sign_in_and_play2
  fill_in :player_1_name, with: 'Gimi'
  fill_in :player_2_name, with: 'Tara'
  click_button 'Submit'
end

def sign_in_and_play1
  fill_in :player_1_name, with: 'Gimi'
  click_button 'Submit'
end
