feature "Playing the game" do

  scenario "When player names have been entered, they appear in the game" do
    sign_in_and_play_1p
    expect(page).to have_content("Mario vs. Dwayne")
  end

  scenario "Player can choose rock" do
    sign_in_and_play_1p
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

end
