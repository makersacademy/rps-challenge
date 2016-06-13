feature "FEATURE: start page" do
  scenario "display opening message" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors"
  end

  scenario "have start button" do
    visit('/')
    find_button("Start").click
  end

  scenario "start button takes user to name input view" do
    start
    expect(page).to have_content "Please enter your name"
  end
end
