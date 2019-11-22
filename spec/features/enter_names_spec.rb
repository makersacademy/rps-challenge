feature 'Enter names' do
  scenario 'player can enter their name before starting the game' do
    enter_name
    expect(page).to have_content "Player - Sam"
  end
end
