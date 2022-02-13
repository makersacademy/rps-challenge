feature "name function" do
    scenario "When a name is entered a name is displayed" do
      visit('/')
      fill_in(:player_name, with: 'Chris')
      click_button('Submit')
      expect(page).to have_content('Chris')
    end
end
  