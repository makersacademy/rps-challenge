feature "Logging in" do
  scenario "User adds name on first page" do
    log_in
    expect(page).to have_content "Billy"
  end
end
