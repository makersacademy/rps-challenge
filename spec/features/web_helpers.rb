def sign_in_and_play
    visit('/')
    fill_in :name, with: 'Zish'
    click_button "Go!"
end