def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Mengchen'
  click_button 'Play!'
end
