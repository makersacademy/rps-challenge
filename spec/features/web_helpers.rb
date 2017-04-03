
def register_and_play
  visit('/')
  fill_in :player_1, with: 'Ruan'
  click_button 'Battle!'
end
