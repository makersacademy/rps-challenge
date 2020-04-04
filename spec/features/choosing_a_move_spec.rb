feature 'choose an option' do
  context 'the player presses an option button' do
    scenario 'the player chooses rock' do
      sign_in_and_press_submit
      click_button "Choose Rock"
      expect(page).to have_content "You choose rock"
    end

    scenario 'the player chooses paper' do
      sign_in_and_press_submit
      click_button "Choose Paper"
      expect(page).to have_content "You choose paper"
    end

    scenario 'the player chooses scissors' do
      sign_in_and_press_submit
      click_button "Choose Scissors"
      expect(page).to have_content "You choose scissors"
    end
  end
end
