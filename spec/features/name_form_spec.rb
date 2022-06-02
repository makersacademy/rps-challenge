RSpec.describe 'player name form' do
  feature 'player enters their name' do
    scenario 'it returns their name' do
      visit ("/")
      fill_in "name", with: "Annabelle"
      click_on "Submit"
      expect(page).to have_content "Welcome Annabelle."
    end
  end
end
