feature "Homepage sign-in form" do
  scenario "it registers a name and puts it in lights" do
    visit('/')
    fill_in("player", with: "Kevin")
    click_button("Enter")
    expect(page).to have_content("Welcome to the jungle Kevin!")
  end
end
