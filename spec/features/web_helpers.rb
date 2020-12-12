def click_and_submit
    visit('/')
    fill_in("name", with: 'AJ')
    click_button("Let's play!")
end