def register_and_play
    visit('/')
    fill_in("player", with: "Jasmine")
    click_button("submit")
end