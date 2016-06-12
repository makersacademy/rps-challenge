require './lib/computer_player.rb'

feature "FEATURE: fight details" do

  let(:computer_weapons_array) {ComputerPlayer::RPS_GESTURES}

  scenario "player names and gestures displayed" do
    allow(computer_weapons_array).to receive(:shuffle).and_return([:paper])
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "Alistair uses rock"
    expect(page).to have_content "Ava uses paper"
  end

end
