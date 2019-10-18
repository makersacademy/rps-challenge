feature 'The player should win' do
  context "The player chooses Rock and should win" do
    scenario "player wins" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Rock"
        break if page.has_text? "The computer chose Scissors"
        click_button "Click to play again"
      end
      expect(page).to have_content "You WIN!"
    end
  end

  context "The player chooses Paper and should win" do
    scenario "player wins" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Paper"
        break if page.has_text? "The computer chose Rock"
        click_button "Click to play again"
      end
      expect(page).to have_content "You WIN!"
    end
  end

  context "The player chooses Scissors and should win" do
    scenario "player wins" do
      sign_in_and_press_submit
      loop do
        click_button "Choose Scissors"
        break if page.has_text? "The computer chose Paper"
        click_button "Click to play again"
      end
      expect(page).to have_content "You WIN!"
    end
  end
end
