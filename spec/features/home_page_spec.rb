feature "Home page" do
  scenario "shows a greeting message" do
    visit('/')
    expect(page).to have_content "Welcome to the RPS Arena"
  end
end
