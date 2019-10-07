def register_and_play
  visit('/')
  fill_in :player, with: 'Raymond'
  click_button 'Submit'
end
