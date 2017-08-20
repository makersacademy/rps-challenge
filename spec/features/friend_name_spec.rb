feature "friend name page", type: :feature do
  scenario "it has a form to enter a name" do
    visit "/"
    expect(page).to have_field("name")
  end
end
