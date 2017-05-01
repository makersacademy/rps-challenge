feature "Test adding a player name" do
  scenario "Player can add his/her name" do
    sign_in_name
    expect(page).to have_content('Simon vs. Machine')
  end

  scenario "Player can click button to play round 1" do
    sign_in_name
    expect(page).to have_content('Simon vs. Machine')
  end
end
