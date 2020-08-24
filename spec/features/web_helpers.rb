
def enter_name_and_play
    visit('/')
    fill_in(:player1, with: 'JS')
    click_button('Submit')
end