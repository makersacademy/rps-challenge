def register_name 
    visit('/')
    fill_in 'player', with: 'Chris'
    click_button "Let's Play!"
end