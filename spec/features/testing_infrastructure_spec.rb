# require "pry"

feature "Entering player name" do
  scenario "Player can enter a name at the start of the game" do
    sign_in_and_play
    expect(page).to have_content("Fran")
  end
end

feature "Making a choice" do
  scenario  "Player can choose a move" do
    sign_in_and_play
    choose('scissors')
    click_button("yes!")
    expect(page).to have_content("scissors")
  end
end
