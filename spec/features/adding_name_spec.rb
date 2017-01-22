feature "Logging in" do
  scenario "User adds name on first page" do
    log_in_and_choose
    expect(page).to have_content "Billy"
  end
end
