feature "index" do
  scenario "player enter name" do
    signin
    expect(page).to have_content "Javi"
  end
end
