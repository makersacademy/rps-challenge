
def sign_in_and_play
      visit('/')
      fill_in 'player1', with: 'Adam'
      click_button 'Start game!'
end
