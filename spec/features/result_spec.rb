feature "result" do
  let(:xin) { double(:player, name: "Xin") }
  background do
    sign_in
  end

  scenario "it's a tie" do
    allow_any_instance_of(Computer).to receive(:weapon) { :rock }
    play_rock
    expect(page).to have_content "It's a tie"
  end

  scenario "player won" do
    allow_any_instance_of(Computer).to receive(:weapon) { :rock }
    play_paper
    expect(page).to have_content "Congratulation! Xin won!"
  end

  scenario "computer won" do
    allow_any_instance_of(Computer).to receive(:weapon) { :rock }
    play_scissors
    expect(page).to have_content "Computer won!"
  end

  scenario "once finished player can play again" do
    allow_any_instance_of(Computer).to receive(:weapon) { :rock }
    play_scissors
    find_button("Play again!").click
  end

  scenario "once finished another player could sign up" do
    allow_any_instance_of(Computer).to receive(:weapon) { :rock }
    play_scissors
    find_button("Homepage").click
  end

end
