feature "Enter a name for display" do
  scenario "Entering name" do
    name_entry
    expect(page).to have_content "Let's go, Sigismund!"
  end
end
