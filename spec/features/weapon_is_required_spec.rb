

feature "weapon is required" do
  scenario "user doesn't pick a weapon" do
    sign_in_and_play
    click_on("Pick your weapon")
    click_on("Submit")
    expect(page).to have_content("Um, you need to pick a weapon!")
  end
end
