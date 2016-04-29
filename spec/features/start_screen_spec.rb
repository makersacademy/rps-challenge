feature "Start screen" do
  scenario "display opening msg" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors"
  end

  scenario "have start button" do
    visit('/')
    find_button("Start").click
  end

  scenario "start button takes to name input screen" do
    visit '/'
    click_button "Start"
    expect(page).to have_content "Enter Name"
  end
end
