feature "Start screen" do
  scenario "display opening msg" do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
  end

  scenario "start button takes to name input screen" do
    visit '/'
    click_button "Start"
    expect(page).to have_content "Enter Name"
  end
end
