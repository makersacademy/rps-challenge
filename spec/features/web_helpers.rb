
def sign_and_play
  visit('/enter_names')
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Sam"
  click_button 'Confirm your names'
end

def one_player_sign_in
  visit '/'
  click_button('1player')
  fill_in('player_1_name', with: 'Bob')
  click_button('Submit')
end

def two_players_sign_in
  visit '/'
  click_button('2players')
  fill_in('player_1_name', with: 'Bob')
  fill_in('player_2_name', with: 'Sam')
  click_button('Submit')
end

def rps_mode
  click_button("rps")
end

def rpsls_mode
  click_button("rpsls")
end
