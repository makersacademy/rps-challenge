def register
  visit('/')
  fill_in :player_01_name, with: 'Stefan'
  fill_in :player_02_name, with: 'Yoda'
  click_button 'Submit'
end

def register_and_choose_weapon
  register
  fill_in :player_01_weapon, with: 'rock'
  click_button 'Choose'
end

def register_all_choose_weapons_01
  register_and_choose_weapon
  fill_in :player_02_weapon, with: 'scissors'
  click_button 'Choose'
end

def register_all_choose_weapons_02
  register_and_choose_weapon
  fill_in :player_02_weapon, with: 'paper'
  click_button 'Choose'
end

def register_all_choose_weapons_03
  register_and_choose_weapon
  fill_in :player_02_weapon, with: 'rock'
  click_button 'Choose'
end

def replay
  register_all_choose_weapons_01
  click_button 'Play'
end
