feature "play a game and draw" do
  scenario "display the drawing screen" do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('rock')
    sign_in_and_play
    choose "Rock"
    click_button "submit"
    expect(page).to have_content "It's a draw. Boring."
  end
end
