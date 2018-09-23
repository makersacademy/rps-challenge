
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game.

feature 'player can register their name' do
  scenario 'player should be shown the form to fill in and submit' do
    two_players_sign_in
    expect(page).to have_content "Welcome Bob and Welcome Sam"
  end
end

feature 'player can register their name' do
  scenario 'player should be shown the form to fill in and submit' do
    one_player_sign_in
    expect(page).to have_content "Welcome Bob and Welcome Computer"
  end
end
