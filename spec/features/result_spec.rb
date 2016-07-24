feature "Result" do
  scenario "Displays User's attack choice" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You chose: Rock")
  end
  scenario "Displays Computer's attack choice" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("Computer chose:")
    end
end
