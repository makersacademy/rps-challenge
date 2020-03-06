require "spec_helper"

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "registering name" do
  scenario "register and see player name" do
    sign_and_play
    expect(page).to have_content("Kuba")
  end
end
