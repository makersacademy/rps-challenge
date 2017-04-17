def sign_in_and_play
    visit('/')
    fill_in('player_name', with: 'Darth Vader')
    click_button('Start game')
end
