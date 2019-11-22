feature 'Enter names' do
  scenario 'player can enter their name before starting the game' do
    visit('/')
    fill_in :name, with: "Sam"
    click_button("Enter name")
    expect(page).to have_content "Player - Sam"
  end
end
