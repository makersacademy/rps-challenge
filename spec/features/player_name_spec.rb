feature 'Player name' do
  scenario 'Display player name' do
    visit '/' do
      fill_in :name, with: 'Reena'
      click_button "Start Game"
      expect(page).to have_content "Welcome to the game, Reena"
    end
  end
end
