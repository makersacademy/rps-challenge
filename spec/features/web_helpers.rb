def add_name_and_play
    visit('/')
        fill_in :player_name, with: 'Joanna'
        click_button 'Play now!'
end
