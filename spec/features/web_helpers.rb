def sign_in_and_play
  visit('/')
  fill_in :player, with: 'Gandalf'
  click_button 'play'
end 