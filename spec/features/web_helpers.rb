def sign_in_and_play
    visit('/')
    fill_in :playername, with: 'Adam'
    click_button 'Submit'
end
