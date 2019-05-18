feature "Enter user name" do
  scenario "submitting the name" do
    visit ('/')
    fill_in 'playername', with: 'Halsey'
    click_button 'Start the Game'
    expect(page).to have_content 'Halsey'
  end
end
