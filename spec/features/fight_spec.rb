feature "FIGHT!" do
  let(:computer_gesture_arr) {ComputerPlayer::RPS_GESTURES}

  scenario "player names and gestures to be displayed" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson uses rock"
    expect(page).to have_content "RoboRPS uses paper"
  end

  scenario "there is a winner" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS wins"
  end

  scenario "tied if same selection" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:rock])
    sign_in_and_choose_rock
    expect(page).to have_content "tie"
  end

end
