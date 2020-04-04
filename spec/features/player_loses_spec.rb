feature 'The player should lose' do
  context "The player chooses Rock and should lose" do
    scenario "player loses" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Rock"
        break if page.has_text? "The computer chose Paper"
        click_button "Click to play again"
      end
      expect(page).to have_content "You LOSE!"
    end
  end

  context "The player chooses Paper and should lose" do
    scenario "player loses" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Paper"
        break if page.has_text? "The computer chose Scissors"
        click_button "Click to play again"
      end
      expect(page).to have_content "You LOSE!"
    end
  end

  context "The player chooses Scissors and should lose" do
    scenario "player loses" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Scissors"
        break if page.has_text? "The computer chose Rock"
        click_button "Click to play again"
      end
      expect(page).to have_content "You LOSE!"
    end
  end
end
