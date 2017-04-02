feature "homepage" do
  scenario "homepage" do
    visit('/')
    expect(page).to have_content "ROCK! PAPER! SCISSORS!"
  end
end
