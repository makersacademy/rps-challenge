feature "Basic in infrastructure working" do
  scenario "Visit homepage working" do
    visit('/')
    expect(page).to have_button("Enter")
  end
end
