feature 'Keep score' do
  let(:computer_gesture_arr) {ComputerPlayer::RPS_GESTURES}

  scenario 'scores start at 0' do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson score: 0"
  end

  scenario 'winner gets plus 1' do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS score: 1"
  end

  scenario "no points if tied" do
    allow(computer_gesture_arr).to receive(:shuffle).and_return([:rock])
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson score: 0"
    expect(page).to have_content "RoboRPS score: 0"
  end
end
