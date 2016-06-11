feature "FEATURE: start page" do
  scenario "display opening message" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors"
  end

  scenario "start button takes user to name input view" do
    visit('/')
    click_button "Start"
    expect(page).to have_content "Please enter your name"
  end
end
