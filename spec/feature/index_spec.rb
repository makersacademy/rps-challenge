feature "index" do
  scenario "player enter name" do
    fill_in :name, with: "Javi"
    clik_button "Play"
    expec(page).to have_content "Javi"
  end
end
