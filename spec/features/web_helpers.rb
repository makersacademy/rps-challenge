def sign_in
    visit('/')
    fill_in :player_1_name, with: "Hafiz"
    click_button "Submit"
end