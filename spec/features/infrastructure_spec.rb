feature do
  scenario "server works" do
    visit "/"
    expect(page).to have_content "my RPS app"
  end
end