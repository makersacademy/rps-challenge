def sign_in
  visit ('/')
  fill_in :player_name, with: 'Mabon'
  click_button 'Submit'
end

def sign_in_and_play_vs_computer
  sign_in
  click_button 'Play vs Computer'
end
