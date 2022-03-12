require_relative 'web_helpers'

feature "Game" do
  scenario "return the winner" do
    register
    fill_in :p1_pick, with: "Rock"
    allow(Game).to receive(:machine_pick).and_return "Paper"
    click_button "Enter"
    expect(page).to have_content "The Machine Wins!"

  end

end
