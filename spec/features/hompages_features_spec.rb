feature "Homepage" do
  scenario "Displays the name of the player" do
    visit '/'
    within('form') do
      fill_in 'name', with: 'Name'
      click_button 'Submit'
    end
    expect(page).to have_content("Hello Name")
  end
end
