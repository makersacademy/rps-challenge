def submit_names(p1)
  visit('/')
  fill_in :player_1, with: p1
  # fill_in :player_2, with: p2
  click_button 'Submit'
end
