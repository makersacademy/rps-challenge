describe 'Outcome page' do

  context "You win" do
    scenario 'displays the outcome of the contest' do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      expect(page).to have_content "It seems you got lucky this time! You WIN!"
    end

    scenario 'after seeing outcome, can return to home page' do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      click_button "I want some more!"
      expect(page).to have_content "Enter names"
    end
  end

  context "You draw" do
    scenario 'displays the outcome of the contest' do
      allow(Kernel).to receive(:rand).and_return(0)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      expect(page).to have_content "Great minds think alike. It's a draw!"
    end
    scenario 'after seeing outcome, can return to home page' do
      allow(Kernel).to receive(:rand).and_return(0)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      click_button "One more try"
      expect(page).to have_content "Enter names"
    end
  end

  context "You lose" do
    scenario 'displays the outcome of the contest' do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      expect(page).to have_content "Oh oh, that was a bit embarrassing! You LOSE!"
    end
    scenario 'after seeing outcome, can return to home page' do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_choose_paper
      click_button "to the awards ceremony"
      click_button "I wasn't ready that time, let's go again"
      expect(page).to have_content "Enter names"
    end
  end

end
