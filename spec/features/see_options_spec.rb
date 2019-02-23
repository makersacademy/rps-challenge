feature "Marketeer is presented with 3 choices rock, paper or scissors" do
  scenario "ask marketeer to choose one option" do
    visit('/')
      fill_in :marketeer1, with: "Mittens"
      click_button "Submit"
      expect(page).to have_content "Choose: rock, paper or scissors?"
    end
  end
