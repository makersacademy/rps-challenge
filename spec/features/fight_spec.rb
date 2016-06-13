feature "FEATURE: fight details" do

  let(:weapons_array) {ComputerPlayer::RPS_WEAPONS}

  scenario "player name and weapon displayed" do
    sign_in_play_and_choose_rock
    expect(page).to have_content "Alistair uses rock"
  end

  scenario "computer picks random weapon" do
    allow(weapons_array).to receive(:shuffle).and_return([:paper])
    sign_in_play_and_choose_rock
    expect(page).to have_content "Ava uses paper"
  end

end
