def register_to_play
  visit('/')
  fill_in :PlayerName, with: 'Ben'
  click_button 'Submit'
end
