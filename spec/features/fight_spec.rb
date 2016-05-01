feature "FIGHT!" do
  let(:computer_gesture_arr) {ComputerPlayer::RPS_GESTURES}

  scenario "player name and gesture to be displayed" do
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson uses rock"
  end

  scenario "computer name and gesture displayed" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS uses paper"
  end

  scenario "computer wins" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS wins"
  end

  scenario "player wins" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:scissors])
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson wins"
  end

  scenario "player and computer pick the same" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:rock])
    sign_in_and_choose_rock
    expect(page).to have_content "tie"
  end

end
