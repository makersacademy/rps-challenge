feature "computer chooses a random option" do
  scenario "User picks an option, and computer randomly chooses an option" do
    allow(game).to receive(:rock)
    sign_in_and_play
    expect(page).to have_content "Computer chose Rock!"
  end
end