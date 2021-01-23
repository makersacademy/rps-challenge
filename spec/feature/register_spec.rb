feature "registering name" do
  scenario "registering name before playing an online game" do
    visit "/"
    fill_in("name", with: "Bob")
    click_button("Register")
    expect(page).to have_content("Bob")
  end
end