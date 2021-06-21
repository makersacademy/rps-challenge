def one_player
    visit '/'
    fill_in 'player_1', with: 'Usna'
    click_button "Continue"
end