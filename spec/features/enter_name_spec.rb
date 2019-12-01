feature "Enter a name for display" do
  scenario "Entering name" do
    visit('/')
    fill_in :name, :with => "Sigismund"
    click_on "Go!"
    expect(page).to have_content "Let's go, Sigismund!"
  end
end
