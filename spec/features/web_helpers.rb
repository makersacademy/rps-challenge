
def sign_up_and_play
  visit('/')
  fill_in :player_name, with: 'Dino'
  click_button 'Start'
end
