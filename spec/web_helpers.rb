def submit_single_name(p1)
  visit('/')
  click_button 'Single Player'
  fill_in :name, with: p1
  click_button 'Play!'
end

def submit_two_names(p1, p2)
  visit('/')
  click_button 'Multiplayer'
  fill_in :player_1, with: p1
  fill_in :player_2, with: p2
  click_button 'Play!'
end

# def choose_rock
#   within('div#options') { within('div#rock') { click_button 'Choose' } }
# end
#
# def choose_paper
#   within('div#options') { within('div#paper') { click_button 'Choose' } }
# end
#
# def choose_scissors
#   within('div#options') { within('div#scissors') { click_button 'Choose' } }
# end
