feature "Feature test" do

  feature "Home page functionality:" do
    scenario "shows game title" do
      visit("/")
      expect(page).to have_content("Rock Paper Scissors")
    end

    scenario "lets user type in his name" do
      sign_in_and_play
    end

    scenario "index page has button for each option" do
      visit("/")
      expect(page).to have_select("options", :options => ["Rock","Paper","Scissors"])
    end
  end

  feature "Results page functionality:" do

    scenario "shows rock if picked" do
      sign_in_and_play
      expect(page).to have_content("Rock vs")
    end

    scenario "shows paper if picked" do
      visit("/")
      select "Paper"
      click_button "Play"
      expect(page).to have_content("Paper vs")
    end

    scenario "shows scissors if picked" do
      visit("/")
      select "Scissors"
      click_button "Play"
      expect(page).to have_content("Scissors vs")
    end

    scenario "Shows draw result" do
      allow_any_instance_of(Computer).to receive(:choice).and_return(:Rock)
      sign_in_and_play
      expect(page).to have_content("Rock vs Rock\nClose one Alfonso! You drew.")
    end

    scenario "Shows loss result" do
      allow_any_instance_of(Computer).to receive(:choice).and_return(:Scissors)
      sign_in_and_play
      expect(page).to have_content("Rock vs Scissors\nCongratulations Alfonso, you won!")
    end

    scenario "Shows player losing" do
      allow_any_instance_of(Computer).to receive(:choice).and_return(:Paper)
      sign_in_and_play
      expect(page).to have_content("Rock vs Paper\nWhoops... Alfonso you lost!")
    end
  end

end
