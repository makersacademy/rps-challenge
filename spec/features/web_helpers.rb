def sign_in_mp_play
  visit ('/')
  click_button 'Submit'
  fill_in :player_1_name, with: "Jess"
  if has_field?('Player 2')
    fill_in :player_2_name, with: 'James'
  end
  click_button 'Submit'
end

def sign_in_sp_play
  visit ('/')
  click_button 'Submit'
  fill_in :player_1_name, with: "Jess"
  click_button 'Submit'
end

def sign_in_mp_start_game
  visit ('/')
  click_button 'Submit'
  fill_in :player_1_name, with: "Jess"
  if has_field?('Player 2')
    fill_in :player_2_name, with: 'James'
  end
  click_button 'Submit'
  click_button 'Start game'
end

def sign_in_sp_start_game
  visit ('/')
  click_button 'Submit'
  fill_in :player_1_name, with: "Jess"
  click_button 'Submit'
  click_button 'Start game'
end
