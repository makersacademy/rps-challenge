def sign_in_and_play
    visit('/names')
    fill_in :player_1_name, with: "Bob"
    fill_in :player_2_name, with: "John"
    click_button "Time to fight!"
end
def sign_in_and_play2
    visit('/names')
    fill_in :player, with: "Bob"
    click_button "Fight!"
end