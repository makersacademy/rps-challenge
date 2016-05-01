feature 'Best of' do
  let(:comp_selections) {ComputerPlayer::RPS_WEAPONS}

  scenario 'starts at best of 3' do
    sign_in_and_choose_rock
    expect(page).to have_content "Best of: 3"
  end

  context "neither player has more than half of best of value" do
    scenario 'has a "next round" button' do
      sign_in_and_choose_rock
      expect(page).to have_button "Next Round"
    end

    scenario '"next round" button takes to selection screen' do
      sign_in_and_choose_rock
      click_button "Next Round"
      expect(page).to have_button "rock"
      expect(page).to have_button "paper"
      expect(page).to have_button "scissors"
    end
  end

  context "one player has more than half of best of value" do
    before {
      allow(comp_selections).to receive(:shuffle).and_return([:scissors])
      sign_in_and_choose_rock
      next_round_and_choose_rock
    }

    scenario 'no next round button' do
      expect(page).not_to have_button "Next Round"
    end

    scenario 'champion message' do
      expect(page).to have_content "Johnson is the champion"
    end

    scenario 'best of +2 button' do
      expect(page).to have_button "Best of 5?"
    end

    scenario 'best of +2 button reroutes to selection page' do
      click_button "Best of 5?"
      expect(page).to have_button "rock"
    end

    scenario 'best of number has increased by 2' do
      click_button "Best of 5?"
      click_button "rock"
      expect(page).to have_content "Best of: 5"

    end
  end


end
