feature 'Computer chooses a hand shape' do
  let(:computer) { double :computer}

  before do
    sign_in_and_play
    click_button "LET'S PLAY!"
    allow(computer).to receive(:computer_choice).and_return(:scissors)
  end

  scenario "see the computer's choice of hand shape" do
    expect(page).to have_content "The computer chose SCISSORS!"
  end

end
