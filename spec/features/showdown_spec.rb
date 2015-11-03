feature "reaching the 'Showdown' page" do
  before do
    visit('/')
    fill_in('Player 1 Name', with: 'Deon')
    click_button('Submit')
    click_button('Paper')
  end
  xscenario "the page shows the player's choice" do
    expect(page).to have_content('You chose paper')
  end
  xscenario "the page shows the opponent's choice" do
    expect(page).to have_content('Your opponent chose ')#stub
  end
  xscenario "there is a 'play again' button" do
    find_button("play again").value
  end
end