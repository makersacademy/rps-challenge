require "./app"

feature "Enter name" do

  scenario "Enter name player 1" do
    visit("/")
    fill_in :player, with: "Manu"
    click_button "Play"
    expect(page).to have_content("Manu vs Computer")
  end

end
