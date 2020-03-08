feature "name" do
  scenario "entered appears on play" do
    enter_name_and_submit
    expect(page).to have_content("Nima")
  end
  scenario "computer name appears on play" do
    enter_name_and_submit
    expect(page).to have_content("computer")
  end
end
