feature "Play rock, paper, scissors" do
  scenario "user can pick and view an option" do
    sign_in_and_play
    choose "Rock"
    click_button "Choose"
    expect(page).to have_content "Richard chooses Rock!"
  end
end
