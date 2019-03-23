feature 'signing in' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'user can sign in with their name' do
    register_player1('Philip')
    expect(page).to have_content 'Philip'
  end
end

feature 'playing the game' do
  context 'after registering' do
    before do
      register_player1('Philip')
    end
    scenario "user can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content 'You selected rock'
    end
    scenario "user can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content 'You selected paper'
    end
  end
end
