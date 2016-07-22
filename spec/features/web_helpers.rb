def sign_in
    visit('/')
    fill_in :player_name, with: 'Ruby'
    click_button 'Submit'
end
