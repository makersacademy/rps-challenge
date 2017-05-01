feature "Test adding a player name" do
  scenario "Player adds his/her name" do
    sign_in_name
    expect(page).to have_content('Simon vs. Machine')
  end
end
