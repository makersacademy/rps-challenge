feature "play a game and lose" do
  scenario "display the losing screen" do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('paper')
    sign_in_and_play
    choose "Rock"
    click_button "submit"
    expect(page).to have_content "Sorry, you lost."
  end
end
