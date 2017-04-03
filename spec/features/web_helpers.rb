def sign_in_and_play
    visit '/'
    fill_in :player_1, with: 'Roberto'
    click_button 'Submit name'
 end
