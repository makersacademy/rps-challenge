feature "entering name" do
  scenario "submit name" do
    visit('/')
    fill_in "player_name", with: "John"
    click_button "Submit"
    expect(page).to have_content "John: Rock, Paper, or Scissors?"
  end
end