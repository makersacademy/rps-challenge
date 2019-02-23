feature "Marketeer chooses rock or paper or scissors" do
  scenario "A button is clicked" do
    sign_in_and_play
    click_button "rock"
    expect(page). to have_content "You chose rock"
    end
  end

  feature "Marketeer chooses rock or paper or scissors" do
    scenario "A button is clicked" do
      sign_in_and_play
      click_button "paper"
      expect(page). to have_content "You chose paper"
      end
    end

    feature "Marketeer chooses rock or paper or scissors" do
      scenario "A button is clicked" do
        sign_in_and_play
        click_button "scissors"
        expect(page). to have_content "You chose scissors"
        end
      end
