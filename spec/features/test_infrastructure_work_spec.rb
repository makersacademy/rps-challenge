
  feature "Player" do
    scenario "can enter name" do
      sign_and_play
      expect(page).to have_content "Hi Bob!" 
    end
  end
