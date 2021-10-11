feature "Homepage" do
  scenario "Has a welcome message" do
    visit("/")
    expect(page).to have_content "Rock. Paper. Scissors."
  end

  scenario "Asks for name" do
    visit("/")
    expect(page).to have_content "Please enter your name:"
  end

  scenario "Displays name" do
    visit("/")
    fill_in "name", with: "Anthony"
    click_button "Submit"
    expect(page).to have_content "Anthony"
  end
end
