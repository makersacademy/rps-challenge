def sign_in_and_play
    visit('/') # player visits home page
    fill_in :player_name, with: 'jgeorgex' # player enters name
    click_button 'PLAY RPS!'
end
