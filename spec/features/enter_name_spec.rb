
feature 'Enter name' do
  scenario 'player enters their name to the game' do
    visit("/")
    expect(page).to have_content("Welcome to RPS game")
  end
end
