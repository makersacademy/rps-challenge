feature "Register" do
  scenario "saves the name of a player" do
    visit "/"
    fill_in 'player_name', with: 'Karol'
    click_button 'Submit'
    expect(page).to have_content("Player: Karol")
  end
end
