require_relative './web_helper'

feature "Fill in name to start the game" do
  scenario "submit name and see them on following screen" do
    sign_in_and_play
    expect(page).to have_content "Oleg"
  end
end
