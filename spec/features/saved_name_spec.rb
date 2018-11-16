feature "User's name is stored" do
  scenario "the name entered is displayed back to the user" do
    visit '/'
    fill_in 'name', with: "New User"
    click_button 'Enter name'
    expect(page).to have_content "Your name has been recorded as New User"
  end
end
