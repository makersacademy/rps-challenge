feature "you have two players" do

  scenario "you can log in with two names" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    expect(page).to have_content("Name two is optional, leave it
      blank if you want to play a computer")
    fill_in "Player two", with: "Clement"
    click_button "Begin..."
    expect(page).to have_content("Clement")
  end
end
