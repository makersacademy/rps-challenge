
def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Laura'
  click_button 'Play'
end
