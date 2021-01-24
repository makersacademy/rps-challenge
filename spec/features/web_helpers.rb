def enter_name_and_play
    visit('/')
    fill_in('player1', with: 'Boris')
    click_button "Let's Play!"    
end