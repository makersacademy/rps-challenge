feature "reaching the 'Showdown' page" do
  before do
    visit('/')
    fill_in('Player 1 Name', with: 'Deon')
    click_button('Submit')
    click_button('Paper')
  end
  scenario "the page shows the player's choice" do
    expect(page).to have_content('You chose paper')
  end
  scenario "the page shows the opponent's choice" do
    expect(page).to have_content('Your opponent chose rock')#stub the random generator
  end
end