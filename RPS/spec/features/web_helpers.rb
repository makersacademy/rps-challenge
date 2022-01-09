
def sign_in_and_play
    visit('/')
    fill_in :player_1, with: "Vanessa"
    fill_in :player_2, with: "Silvia" 
    click_button 'Submit'
end