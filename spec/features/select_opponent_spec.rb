describe RPS do
  feature "select opponent" do
    scenario "player selects human" do
      visit '/'
      click_button 'Human'
      expect(page).to have_content("Enter player names:")
    end
    scenario "player selects computer" do
      visit '/'
      click_button 'Computer'
      expect(page).to have_content("Enter player name:")
    end
  end
end
