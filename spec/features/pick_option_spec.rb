feature "Play rock, paper, scissors" do
  scenario "user can pick and view an option" do
    visit '/'
    fill_in "player_name", with: "Richard"
    click_button "Start"
    choose "Rock"
    click_button "Choose"
    expect(page).to have_content "You chose Rock"
  end
end
