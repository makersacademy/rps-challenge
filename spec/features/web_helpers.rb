def sign_in_and_play
    visit('/')
    fill_in("name", with: "Evie")
    click_button('Submit')
end