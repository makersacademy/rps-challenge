feature "FIGHT!" do
  let(:computer_weapon_arr) {ComputerPlayer::RPS_WEAPONS}

  scenario "player name and weapon to be displayed" do
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson uses rock"
  end

  scenario "computer name and weapon displayed" do
    allow(computer_weapon_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS uses paper"
  end

  scenario "computer wins" do
    allow(computer_weapon_arr).to receive(:shuffle).and_return([:paper])
    sign_in_and_choose_rock
    expect(page).to have_content "RoboRPS wins"
  end

  scenario "player wins" do
    allow(computer_weapon_arr).to receive(:shuffle).and_return([:scissors])
    sign_in_and_choose_rock
    expect(page).to have_content "Johnson wins"
  end

  scenario "player and computer pick the same" do
    allow(computer_weapon_arr).to receive(:shuffle).and_return([:rock])
    sign_in_and_choose_rock
    expect(page).to have_content "tie"
  end

end
