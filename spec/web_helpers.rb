def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Mahmud'
  click_button 'submit'
end
