def start_game
    visit('/')
    click_button('enter_game')
    fill_in :player1, with: "Pink Lady"
    click_button('Submit')
end