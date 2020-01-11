feature "entering name" do
  scenario "it allows the player to enter their name" do
    visit ('/')
    fill_in :name, with: "Asia"
    click_button "Submit"
    expect(page).to have_content "Player created name: Asia"
  end
end