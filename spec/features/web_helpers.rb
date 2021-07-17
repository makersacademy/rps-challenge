def name_entered
  visit('/')
  fill_in :player_name, with: 'Luke'
  click_button 'Click to Begin!'
end