feature "so that the user can register his name to play this amazing game" do
    scenario "submit name" do
      visit('/')
      expect(page).to have_content('Please enter your name')
    end
end