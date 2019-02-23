feature "User can input their name" do
  scenario "submitting player name" do
    visit('/')
    fill_in :player1, with: "Mittens"
    click_button "Submit"
    expect(page).to have_content "Hello Mittens!"
  end
end
