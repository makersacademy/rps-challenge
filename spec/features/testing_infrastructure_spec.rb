# require "pry"

feature "Entering player name" do
  scenario "Player enter name at the start of the game" do
    # visit('/')
    # fill_in "player_name", with: "Fran"
    # click_button("Submit")
    sign_in_and_play
    expect(page).to have_content("Fran")
  end
end
