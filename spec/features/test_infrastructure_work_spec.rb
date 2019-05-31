describe "homepage", type: :feature do
  
  feature "Player" do
    scenario "can enter name" do
      visit '/'
      fill_in :player, with: "Bob"

      click_button "Play!"
      expect(page).to have_content "Hi Bob!" 
    end
  end
end
