def sign_in_and_play
    visit('/')
    fill_in('name1', with: "Wednesday")
    click_button('Play')
end