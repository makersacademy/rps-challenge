def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Archie'
  click_button 'Play!'
end
