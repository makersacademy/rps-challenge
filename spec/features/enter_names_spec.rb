feature 'enter name' do
  context 'homepage' do
    scenario 'Can enter a name for player 1' do
      visit ('/')
      fill_in :name, with: 'Al'
      click_button "Submit"
      expect(page).to have_content('Welcome Al to Rock, Paper, Scissors :)')
    end
  end
end
