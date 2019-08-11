
def set_player_name
  visit('/')
  fill_in :player_1_name
  click_button 'Submit'
end
