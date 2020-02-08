def sign_in_and_play_two_players
    visit('/')
    fill_in('player_1_name', with: "Tango")
    fill_in('player_2_name', with: "Cash")
    click_button("Submit")
end