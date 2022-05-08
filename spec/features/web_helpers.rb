def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Luiza'
  click_button 'Submit'
end