feature "draw a game and click new game button" do
  scenario "display play game view" do
    allow_any_instance_of(ComputerPlayer).to receive(:move).and_return('rock')
    sign_in_and_play
    choose "Rock"
    click_button "submit"
    click_button 'Play again'
    expect(page).to have_content "Hi, Matt. Let's play!"
  end
end
