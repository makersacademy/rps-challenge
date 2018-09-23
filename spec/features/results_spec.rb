
feature "Results" do
  scenario "Shows the player the result of the game" do
    visit('/')
    fill_in :name, with: "Florence"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content("The computer chose")
  end
end
