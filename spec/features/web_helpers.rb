def sign_in_and_play
    visit '/'
    fill_in 'Player_1', with: 'Raluca'
    click_button 'Submit'
  end