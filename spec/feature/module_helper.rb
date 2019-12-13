def player_names_submitted
  visit('/')
  fill_in :player, with: "Adam"
  click_button 'Submit'
end
