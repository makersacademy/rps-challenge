feature "Home page" do
    scenario "has content on homepage" do
      visit('/')
      expect(page).to have_content "Hello, what's your name?"
    end

    scenario "has submit button on homepage" do
        visit('/')
        expect(page).to have_button "Let's play!"
      end

end


