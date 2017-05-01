 def enter_name_and_play
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
end