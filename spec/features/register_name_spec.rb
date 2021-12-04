feature "name registration" do
  scenario "user registers name and name is displayed" do
    sign_in_and_play
    expect(page).to have_content("Win")
  end
end
