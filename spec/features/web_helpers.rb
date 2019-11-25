# Replaced the repeated lines in our feature test by method sign_in_and_play
# visit('/')
# fill_in :player_1_name, with: 'Pavi'
# fill_in :player_2_name, with: 'Ash'
# click_button 'Submit'
def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Pavi'
  # fill_in :p2_name, with: 'Ash'
  click_button 'Submit'
end
