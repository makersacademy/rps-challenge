require "spec_helper"

feature "Can choose multiplayer" do
  scenario "Player 2 is entered and goes to multiplayer page" do
    sign_in_and_play
    enter_multiplayer
    expect(page).to have_content "Lanie is playing vs Ada!"
  end
end
