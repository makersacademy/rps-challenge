require "web_helpers"

feature "entering names" do
  scenario "allows a person to enter a name" do
    visit("/")
    expect(page).to have_content("INPUT NAME")
    fill_in(:player_name, with: "YAAARRRGH")
  end
end
