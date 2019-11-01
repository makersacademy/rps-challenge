require "./app.rb"

feature "the player can enter their name" do
  scenario "the user can see their name displayed" do
    visit("/")
    fill_in :player_1, with: "Marc"
    click_button "Submit"
    expect(page).to have_content "Marc"
  end
end
