feature "index page allows you to regsiter name" do
  scenario "prompts entering of name" do
    visit "/"
    expect(page).to have_content "Name:"
  end
  scenario "allows you to submit a form" do
    visit "/"
    expect(page).to have_button("Submit")
  end
end
