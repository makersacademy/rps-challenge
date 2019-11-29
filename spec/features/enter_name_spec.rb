
feature 'Enter name' do
  scenario 'player enters their name to the game' do
    visit("/")
    expect(page).to have_content("Welcome to RPS game")
  end

  scenario "Display player's name after input" do
    visit("/")
    fill_in(:name, with: "John")
    click_on('Submit')
    expect(page).to have_content("Welcome John")
  end
end
