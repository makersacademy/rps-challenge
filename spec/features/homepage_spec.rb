feature "Homepage" do
  scenario "user enters name and it is displayed with greeting" do
    enter_name_and_play
    expect(page).to have_content("Welcome Bob!")
  end
end
