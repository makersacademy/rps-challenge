
feature "entering player name" do
  scenario "player enters their name and is taken to the game screen" do

    click_button('play')
    expect(page).to have content("Choose your weapon")
  end
end
