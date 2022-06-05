RSpec.describe 'player name form' do
  feature 'player enters their name' do
    scenario 'it returns their name' do
      visit ("/")
      fill_in "player1", with: "Annabelle"
      fill_in "player2", with: "Sandy"
      click_on "Submit"
      expect(page).to have_content "Welcome Annabelle and Sandy."
    end
  end
end
