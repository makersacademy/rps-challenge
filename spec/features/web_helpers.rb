def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Gandalf'
  click_button 'play'
  save_and_open_page
end
