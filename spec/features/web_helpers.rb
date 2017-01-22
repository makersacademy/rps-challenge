def register
  visit('/')
  fill_in :player_01_name, with: 'Stefan'
  click_button 'Submit'
end

def register_and_choose_weapon
  register
  fill_in :player_01_weapon, with: 'rock'
  click_button 'Choose'
end

def register_weapon_result
  register_and_choose_weapon
  click_button 'OK'
end

def replay
  register_weapon_result
  click_button 'Play'
end
