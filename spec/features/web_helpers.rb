def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Gandalf'
  click_button 'play'
end
