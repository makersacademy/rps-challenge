feature 'signing in' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'user can sign in with their name' do
    register_player1('Philip')
    expect(page).to have_content 'Philip'
  end
end
