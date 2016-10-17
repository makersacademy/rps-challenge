def sign_in_2p
  visit('/')
  fill_in :player_1_name, with: 'Leeroy'
  fill_in :player_2_name, with: 'Royston'
  click_button 'Submit'
end

def sign_in_1p
  visit('/')
  fill_in :player_1_name, with: 'Leeroy'
  fill_in :player_2_name, with: ''
  click_button 'Submit'
end

def sign_in_2p_p1_select
  visit('/')
  fill_in :player_1_name, with: 'Leeroy'
  fill_in :player_2_name, with: 'Royston'
  click_button 'Submit'
  click_button 'ROCK'
end
