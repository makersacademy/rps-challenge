feature "FIGHT!" do
  let(:weapon_arr) {ComputerPlayer::RPS_WEAPONS}

  scenario "player name and weapon to be displayed" do
    sign_in
    click_button "rock"
    expect(page).to have_content "Johnson uses rock"
  end

  scenario "computer picks random weapon" do
    allow(weapon_arr).to receive(:shuffle).and_return([:rock,:paper,:scissors])
    sign_in
    click_button "rock"
    expect(page).to have_content "RoboRPS uses rock"
  end

end
