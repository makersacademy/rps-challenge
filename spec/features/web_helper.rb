def sign_in_and_play
  visit('/')
  click_button 'Singleplayer'
  fill_in :name, with: 'Hibo'
  click_button 'Play!'
end
