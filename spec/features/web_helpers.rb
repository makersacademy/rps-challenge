def register_to_play
  visit('/register')
  fill_in :name, with: 'Mutsa'
  click_button 'Submit'
end
