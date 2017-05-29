# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "the player can register it\"s name" do
  scenario "player register it\"s name and can see it" do
    sign_in_and_play
    expect(page).to have_content("Guillermo")
  end
end
