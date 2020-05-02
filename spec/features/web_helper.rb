def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Hibo'
  click_button 'Play!'
end
