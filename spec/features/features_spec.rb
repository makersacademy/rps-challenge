feature "Feature Tests" do
  scenario "can run main page" do
    visit("/")
    expect(page).to have_content "play rock-paper-scissors"
  end
end