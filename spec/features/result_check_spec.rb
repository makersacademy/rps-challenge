feature "Properly check the result" do
  before do
    sign_in_and_play
  end
  context "Player choosed paper" do
    scenario "and pc player paper" do
      srand(67_808)
      click_button "Paper"
      expect(page).to have_content "Draw"
    end
    scenario "and pc player scissors" do
      srand(67_809)
      click_button "Paper"
      expect(page).to have_content "PC wins"
    end
    scenario "and pc player rock" do
      srand(67_810)
      click_button "Paper"
      expect(page).to have_content "Jose wins"
    end
  end

  context "Player choosed Rock" do
    scenario "and pc player paper" do
      srand(67_808)
      click_button "Rock"
      expect(page).to have_content "PC wins"
    end
    scenario "and pc player scissors" do
      srand(67_809)
      click_button "Rock"
      expect(page).to have_content "Jose wins"
    end
    scenario "and pc player rock" do
      srand(67_810)
      click_button "Rock"
      expect(page).to have_content "Draw"
    end
  end

  context "Player choosed scissors" do
    scenario "and pc player paper" do
      srand(67_808)
      click_button "Scissors"
      expect(page).to have_content "Jose wins"
    end
    scenario "and pc player scissors" do
      srand(67_809)
      click_button "Scissors"
      expect(page).to have_content "Draw"
    end
    scenario "and pc player rock" do
      srand(67_810)
      click_button "Scissors"
      expect(page).to have_content "PC wins"
    end
  end

end
