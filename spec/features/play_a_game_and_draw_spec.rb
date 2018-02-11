feature "play a game and draw" do
  before :each do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('rock')
    sign_in_and_play
    choose "Rock"
    click_button "submit"
  end

  scenario "says it's a draw" do
    expect(page).to have_content "It's a draw."
  end

  scenario "displays the move" do
    expect(page).to have_content "rock"
  end
end
