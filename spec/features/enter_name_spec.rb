feature 'Enter name' do
  scenario 'player enters their name to the game' do
    visit("/")
    expect(page).to have_content("Welcome to RPS game")
  end

  scenario "Display player's name after input" do
    sign_in_and_play
    expect(page).to have_content("Welcome John")
  end
end
