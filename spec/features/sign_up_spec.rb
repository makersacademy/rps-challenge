feature "Registering username" do
  scenario "Signing up to play the game" do
    visit('/')
    fill_in('username', with: 'Alaan')
    click_button("Play!")
    expect(page).to have_content('Alaan vs Machine')
  end
end
