feature "Homepage" do
  scenario "Displays the name of the player" do
    visit '/'
    within('form') do
      fill_in 'name', with: 'Name'
      click_button 'Submit'
    end
    expect(page).to have_content("Hello Name")
  end

  scenario "Presents the user with three choices" do
    visit '/'
    within('form') do
      fill_in 'name', with: 'Name'
      click_button 'Submit'
    end
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
end
