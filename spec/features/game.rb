feature "Displaying choice" do
  scenario "display choice" do
    sign_in_and_play
    click_link "Rock"
    expect(page).to have_content "Stacy has chosen Rock."
  end
end