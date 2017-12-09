feature "Homepage" do
  before do
    visit '/'
  end
  scenario "the player can enter their name" do
    expect(page).to have_field("Name")
  end
  scenario "the player can start a game" do
    fill_in("Name", with: "Jeb Kerman")
    click_button("Start!")
    expect(page).to have_content "Rock, Paper, Scissors!\nJeb Kerman VS Computer"
  end
end
