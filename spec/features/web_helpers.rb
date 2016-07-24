def sign_in_to_play
    visit('/')
    fill_in(:player_1_name, with: 'Jimbo')
    click_button 'Submit'
end