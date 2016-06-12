
def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Poppy'
  click_button 'Play!'
end