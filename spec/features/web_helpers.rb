
def sign_in_and_play
  visit('/')
  fill_in :single_player_name, with: "Dave"
  click_button 'Play Single!'
end

def multi_sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Dave"
  fill_in :player_2_name, with: "Mittens"
  click_button 'Play!'
end

