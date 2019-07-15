def start_game
  visit '/'
  fill_in :name, with: 'Kaja'
  click_button 'Submit'
end
