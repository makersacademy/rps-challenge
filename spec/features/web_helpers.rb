def sign_in_and_play
  visit('/')
    fill_in 'Player_1_name', with: 'Raefe'
    click_button 'Submit'
  end
