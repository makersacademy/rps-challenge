feature "play a game and lose" do
  before :each do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('paper')
    sign_in_and_play("Rock")
  end

  scenario "says sorry" do
    expect(page).to have_content "Sorry, mate."
  end

  scenario "displays the moves" do
    expect(page).to have_content("rock") && have_content("paper")
  end
end
