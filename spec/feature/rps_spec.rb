feature "RPS page" do
  scenario "clicking button" do
    visit "/rps"
    expect(page).to have_content "Rock", "Paper", "Sissors"
  end
end
