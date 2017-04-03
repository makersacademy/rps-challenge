
def register_and_play
  visit('/')
  fill_in :player_1, with: 'Ruan'
  click_button 'Battle!'
end


# def play_three_times
#   register_and_play
#   click_button 'Rock'
#   click_button 'Play again'
#   click_button 'Paper'
# end
