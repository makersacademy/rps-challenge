feature RockPaperScissors do
  context "home page" do
    scenario "players' names are requested" do
      visit '/'
      expect(page).to have_content "Please enter your names to begin"
    end

    scenario "there are input fields for the user to enter their name" do
      visit '/'
      expect(page).to have_css 'input[type=text]'
      expect(page).to have_css 'input[type=submit]'
    end
  end
end
