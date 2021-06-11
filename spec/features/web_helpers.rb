
def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Sean'
    fill_in :player_2_name, with: 'Tyson'
    click_button 'Submit'
end