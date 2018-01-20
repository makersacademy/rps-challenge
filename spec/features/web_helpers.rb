def register_and_play
  visit('/')
  fill_in :name, with: 'Anjana'
  click_button 'Submit'
end
