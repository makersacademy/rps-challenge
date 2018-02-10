feature "play a game and win" do
  scenario "display the winning screen" do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('scissors')
    sign_in_and_play
    choose "Rock"
    click_button "submit"
    expect(page).to have_content "Congratulations"
  end
end
