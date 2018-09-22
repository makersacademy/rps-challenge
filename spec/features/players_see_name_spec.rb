
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game.

feature 'player can register their name' do
  scenario 'player should be shown the form to fill in and submit' do
    sign_and_play
    expect(page).to have_content "Bob vs. Sam"
  end
end
