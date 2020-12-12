feature "Homepage sign-in form" do
  scenario "it registers a name and puts it in lights" do
    sign_in
    expect(page).to have_content("Welcome to the jungle Kevin!")
  end
end
