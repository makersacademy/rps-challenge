def start_game
  visit '/'
  click_button 'SINGLE PLAYER'
  fill_in :name, with: 'bob'
  click_button 'submit'
end
