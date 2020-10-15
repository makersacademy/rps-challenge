feature "View rock, paper, scissors" do
  scenario "see available choice" do
    sign_in_and_play
    expect(page).to have_content "Rock, paper or scissors, Stacy?"
  end
end