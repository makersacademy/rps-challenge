def register_name
    visit('/')
    fill_in 'player1', with: 'Apps'
    click_on 'Submit'
end
