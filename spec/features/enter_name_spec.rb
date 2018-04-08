

feature "Enter name" do
  scenario "Ask player to enter their name" do
    visit('/')
    fill_in :name, with: "Gadiza"
    click_button "Submit"
  end

  scenario "Show player's name" do
    visit('/name')
    expect(page).to have_content(:name)
  end
end
