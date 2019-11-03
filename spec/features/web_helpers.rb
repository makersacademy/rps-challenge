def intro_steps
  visit('/')
  fill_in :player_1, with: "name"
  click_button 'Submit'
end
