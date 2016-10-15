require "./app"

feature "Enter name" do

  scenario "Enter name player 1" do
    visit ("/")
    fill_in :player_1, with: "Jimmy"
    click_button "Play"
    expect(page).to have_text("Jimmy")
  end

end
