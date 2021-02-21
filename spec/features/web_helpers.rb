def fill_name_and_submit
    visit('/')
    fill_in :player_name, with: 'Raf'
    click_button 'Submit Name'
end