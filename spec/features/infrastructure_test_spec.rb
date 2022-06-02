feature "infrastructure" do
  scenario "home page displays RockPaperScissors" do
    visit ('/')
    expect(page).to have_content "RockPaperScissors"
  end
end
