
def results_screen
  visit('/play')
  fill_in :chosen_move, with: 'Rock'
  click_button 'Enter'
end
