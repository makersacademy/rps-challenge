feature "play a game and win" do
  before :each do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('scissors')
    sign_in_and_play("Rock")
  end

  scenario "says congratulations" do
    expect(page).to have_content "Congratulations"
  end

  scenario "displays the moves" do
      expect(page).to have_content("rock") && have_content('scissors')
  end
end
