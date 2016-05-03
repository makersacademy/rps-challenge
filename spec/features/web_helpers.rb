def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'sity'
  click_button 'push me'
end

def choose_and_submit(weapon)
  sign_in_and_play
  click_button 'start'
  click_button weapon
end
