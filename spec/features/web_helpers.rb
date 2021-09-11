def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: 'Keldra') 
  click_button 'Submit'
  save_and_open_page
end
