def sign_in
  visit('/')
  click_link 'Classic'
  click_link '1 Player'
  fill_in :name, with: 'Dave'
  click_button 'Submit'
end

def sign_in_1_player_rpsls
  visit('/')
  click_link 'RPSLS'
  click_link '1 Player'
  fill_in :name, with: 'Dave'
  click_button 'Submit'
end

def sign_in_2_player
  visit('/')
  click_link 'Classic'
  click_link '2 Player'
  fill_in :name_1, with: 'Dave'
  fill_in :name_2, with: 'Luke'
  click_button 'Submit'
end

def sign_in_2_player_rpsls
  visit('/')
  click_link 'RPSLS'
  click_link '2 Player'
  fill_in :name_1, with: 'Dave'
  fill_in :name_2, with: 'Luke'
  click_button 'Submit'
end
