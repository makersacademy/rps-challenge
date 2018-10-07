Capybara.app = Rps

feature 'At the start of the game' do
  scenario 'User can choose between single player or multiplayer' do
    visit('/')
    expect(page).to have_button('single_player')
    expect(page).to have_button('multiplayer')
  end
end
