feature "User can choose single or multiplayer game" do

  scenario "Chooses single player" do
    visit ('/')
    click_button('Single Player')
    expect(page).to have_content("Please enter your name below")
  end

  scenario "Chooses multiplayer" do
    visit ('/')
    click_button('Multiplayer')
    expect(page).to have_content("Please enter the names of both players")
  end
end
