feature "homepage testing set-up" do
    scenario "homepage test" do
      visit('/')
      expect(page).to have_content 'Rock - Paper - Scissors'
    end
end
  