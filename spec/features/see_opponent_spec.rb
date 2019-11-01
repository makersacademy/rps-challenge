feature "See opponent" do
    # As a marketeer
    # So that I know who I'm up against
    # I would like to see my opponent
    scenario "Sees an opponent's name" do
      visit("/")
      fill_in :player_1_name, with: "Batman"
      click_button "Submit"
      expect(page).to have_content "Joker"
    end
  end