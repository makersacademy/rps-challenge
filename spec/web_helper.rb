def enter_name_and_submit
    visit '/'
    click_link 'login'
    fill_in("Name", with: "Bernard")
    click_button "submit"
end